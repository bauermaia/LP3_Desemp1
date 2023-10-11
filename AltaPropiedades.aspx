﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltaPropiedades.aspx.cs" Inherits="LP3_Desemp1.AltaPropiedades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Dar de alta nuevas propiedades"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Calle:"></asp:Label>
            <asp:TextBox ID="txtCalle" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Altura:"></asp:Label>
            <asp:TextBox ID="txtAltura" runat="server"></asp:TextBox>
            <br />
        </div>
        <asp:Label ID="Label4" runat="server" Text="Propietario:"></asp:Label>
        <asp:DropDownList ID="drPropietario" runat="server" DataSourceID="SqlDataSourcePropietarios" DataTextField="apellido" DataValueField="idPropietario">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Button ID="btnAlta" runat="server" OnClick="btnAlta_Click" Text="Agregar" />
&nbsp;<asp:Label ID="lblResultado" runat="server"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSourcePropietarios" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" SelectCommand="SELECT * FROM [Propietarios]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="idPropiedad" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." GridLines="None">
            <Columns>
                <asp:BoundField DataField="idPropiedad" HeaderText="id Propiedad" InsertVisible="False" ReadOnly="True" SortExpression="idPropiedad" />
                <asp:BoundField DataField="calle" HeaderText="Calle" SortExpression="calle" />
                <asp:BoundField DataField="altura" HeaderText="altura" SortExpression="altura" />
                <asp:BoundField DataField="idPropietario" HeaderText="idPropietario" SortExpression="idPropietario" />
                <asp:BoundField DataField="nombre" HeaderText="nombre" SortExpression="nombre" />
                <asp:BoundField DataField="apellido" HeaderText="apellido" SortExpression="apellido" />
            </Columns>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IssdTP42023ConnectionString1 %>" DeleteCommand="DELETE FROM [Propiedades] WHERE [idPropiedad] = @idPropiedad" InsertCommand="INSERT INTO [Propiedades] ([calle], [altura], [idPropietario]) VALUES (@calle, @altura, @idPropietario)" ProviderName="<%$ ConnectionStrings:IssdTP42023ConnectionString1.ProviderName %>" SelectCommand="SELECT Propiedades.idPropiedad, Propiedades.calle, Propiedades.altura, Propiedades.idPropietario, Propietarios.apellido, Propietarios.nombre FROM Propiedades INNER JOIN Propietarios ON Propiedades.idPropietario = Propietarios.idPropietario" UpdateCommand="UPDATE [Propiedades] SET [calle] = @calle, [altura] = @altura, [idPropietario] = @idPropietario WHERE [idPropiedad] = @idPropiedad">
            <DeleteParameters>
                <asp:Parameter Name="idPropiedad" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:ControlParameter ControlID="txtCalle" Name="calle" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="txtAltura" Name="altura" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="drPropietario" Name="idPropietario" PropertyName="SelectedValue" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="calle" Type="String" />
                <asp:Parameter Name="altura" Type="String" />
                <asp:Parameter Name="idPropietario" Type="Int32" />
                <asp:Parameter Name="idPropiedad" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Volver al menú principal</asp:HyperLink>
        <br />
    </form>
</body>
</html>
