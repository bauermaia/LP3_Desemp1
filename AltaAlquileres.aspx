<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaAlquileres.aspx.cs" Inherits="LP3_Desemp1.AltaAlquileres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Cargar nuevos alquileres"></asp:Label>
            <br />
            <br />
            Propiedad:
            <asp:DropDownList ID="drPropiedad" runat="server" DataSourceID="SqlDataSource1" DataTextField="calle" DataValueField="idPropiedad">
            </asp:DropDownList>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Propiedades]"></asp:SqlDataSource>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Monto:"></asp:Label>
        <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Agregar" />
&nbsp;<asp:Label ID="lblResultado" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="apellido" DataValueField="idPropietario">
        </asp:DropDownList>
        <asp:Button ID="Button2" runat="server" Text="Filtrar" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="Quitar filtros" OnClick="Button3_Click" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Propietarios]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataSourceID="SqlDataSource2" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black">
            <Columns>
                <asp:BoundField DataField="idAlquiler" HeaderText="idAlquiler" InsertVisible="False" ReadOnly="True" SortExpression="idAlquiler" />
                <asp:BoundField DataField="idPropiedad" HeaderText="idPropiedad" SortExpression="idPropiedad" />
                <asp:BoundField DataField="monto" HeaderText="monto" SortExpression="monto" />
                <asp:BoundField DataField="calle" HeaderText="calle" SortExpression="calle" />
                <asp:BoundField DataField="idPropietario" HeaderText="idPropietario" InsertVisible="False" ReadOnly="True" SortExpression="idPropietario" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
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
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Alquileres] WHERE [idAlquiler] = @idAlquiler" InsertCommand="INSERT INTO [Alquileres] ([idPropiedad], [monto]) VALUES (@idPropiedad, @monto)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT Alquileres.idAlquiler, Alquileres.idPropiedad, Alquileres.monto, Propiedades.calle, Propietarios.apellido, Propietarios.idPropietario FROM Alquileres INNER JOIN Propiedades ON Alquileres.idPropiedad = Propiedades.idPropiedad INNER JOIN Propietarios ON Propiedades.idPropietario = Propietarios.idPropietario" UpdateCommand="UPDATE [Alquileres] SET [idPropiedad] = @idPropiedad, [monto] = @monto WHERE [idAlquiler] = @idAlquiler">
            <DeleteParameters>
                <asp:Parameter Name="idAlquiler" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="drPropiedad" Name="idPropiedad" PropertyName="SelectedValue" Type="Int32" />
                <asp:ControlParameter ControlID="txtMonto" Name="monto" PropertyName="Text" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="idPropiedad" Type="Int32" />
                <asp:Parameter Name="monto" Type="Decimal" />
                <asp:Parameter Name="idAlquiler" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
        <br />
    </form>
</body>
</html>
