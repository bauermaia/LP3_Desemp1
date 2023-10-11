<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="LP3_Desemp1.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Propietarios"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AltaPropietarios.aspx">Agregar nuevos propietarios</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/ModificarPropietarios.aspx">Modificar propietarios</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/BajaPropietarios.aspx">Eliminar propietarios</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Propiedades"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/AltaPropiedades.aspx">Agregar nuevas propiedades</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/ModificarPropiedades.aspx">Modificar propiedades</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/BajaPropiedades.aspx">Eliminar propiedades</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Alquileres"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/AltaAlquileres.aspx">Agregar nuevos alquileres</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ModificarAlquileres.aspx">Modificar alquileres</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/BajaAlquileres.aspx">Baja de alquileres</asp:HyperLink>
            <br />
        </div>
    </form>
</body>
</html>
