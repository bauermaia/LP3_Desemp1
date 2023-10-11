<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModificarAlquileres.aspx.cs" Inherits="LP3_Desemp1.ModificarAlquileres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Modificación de alquileres"></asp:Label>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="idAlquiler" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="idAlquiler" HeaderText="idAlquiler" InsertVisible="False" ReadOnly="True" SortExpression="idAlquiler" />
                <asp:BoundField DataField="idPropiedad" HeaderText="idPropiedad" SortExpression="idPropiedad" />
                <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Alquileres] WHERE [idAlquiler] = @idAlquiler" InsertCommand="INSERT INTO [Alquileres] ([idPropiedad], [monto]) VALUES (@idPropiedad, @monto)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT Alquileres.idAlquiler, Alquileres.idPropiedad, Alquileres.monto, Propiedades.calle FROM Alquileres INNER JOIN Propiedades ON Alquileres.idPropiedad = Propiedades.idPropiedad" UpdateCommand="UPDATE [Alquileres] SET [idPropiedad] = @idPropiedad, [monto] = @monto WHERE [idAlquiler] = @idAlquiler">
            <DeleteParameters>
                <asp:Parameter Name="idAlquiler" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="idPropiedad" Type="Int32" />
                <asp:Parameter Name="monto" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:ControlParameter ControlID="drPropiedad" Name="idPropiedad" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="txtMonto" Name="monto" PropertyName="Text" Type="Decimal" />
                <asp:ControlParameter ControlID="GridView1" Name="idAlquiler" PropertyName="SelectedValue" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
        <asp:DropDownList ID="drPropiedad" runat="server" DataSourceID="SqlDataSourcePropiedad" DataTextField="calle" DataValueField="idPropiedad">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcePropiedad" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Propiedades]"></asp:SqlDataSource>
        <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" />
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
    </form>
</body>
</html>
