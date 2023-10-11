<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPropietarios.aspx.cs" Inherits="LP3_Desemp1.AltaPropietarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Agregar nuevos propietarios"></asp:Label>
            <br />
            <br />
        </div>
        <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Apellido:"></asp:Label>
        <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
        <p>
            <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Agregar" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="idPropietario" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar.">
                <Columns>
                    <asp:BoundField DataField="idPropietario" HeaderText="id Propietario" ReadOnly="True" SortExpression="idPropietario" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" SortExpression="nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" SortExpression="apellido" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Propietarios] WHERE [idPropietario] = @idPropietario" InsertCommand="INSERT INTO [Propietarios] ([apellido], [nombre]) VALUES (@apellido, @nombre)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT [idPropietario], [apellido], [nombre] FROM [Propietarios]" UpdateCommand="UPDATE [Propietarios] SET [apellido] = @apellido, [nombre] = @nombre WHERE [idPropietario] = @idPropietario">
                <DeleteParameters>
                    <asp:Parameter Name="idPropietario" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="txtApellido" Name="apellido" PropertyName="Text" Type="String" />
                    <asp:ControlParameter ControlID="txtNombre" Name="nombre" PropertyName="Text" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="apellido" Type="String" />
                    <asp:Parameter Name="nombre" Type="String" />
                    <asp:Parameter Name="idPropietario" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
    </form>
</body>
</html>
