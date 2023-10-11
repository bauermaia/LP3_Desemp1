<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BajaAlquileres.aspx.cs" Inherits="LP3_Desemp1.BajaAlquileres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Dar de baja alquileres"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="idAlquiler" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." ForeColor="Black">
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Alquileres] WHERE [idAlquiler] = @idAlquiler" InsertCommand="INSERT INTO [Alquileres] ([idPropiedad], [monto]) VALUES (@idPropiedad, @monto)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT Alquileres.idAlquiler, Alquileres.idPropiedad, Alquileres.monto, Propiedades.calle, Propietarios.apellido, Propietarios.idPropietario FROM Alquileres INNER JOIN Propiedades ON Alquileres.idPropiedad = Propiedades.idPropiedad INNER JOIN Propietarios ON Propiedades.idPropietario = Propietarios.idPropietario" UpdateCommand="UPDATE [Alquileres] SET [idPropiedad] = @idPropiedad, [monto] = @monto WHERE [idAlquiler] = @idAlquiler">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="idAlquiler" PropertyName="SelectedValue" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="idPropiedad" Type="Int32" />
                    <asp:Parameter Name="monto" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="idPropiedad" Type="Int32" />
                    <asp:Parameter Name="monto" Type="Decimal" />
                    <asp:Parameter Name="idAlquiler" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
&nbsp;<asp:Label ID="lblResultado" runat="server"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
        </div>
    </form>
</body>
</html>
