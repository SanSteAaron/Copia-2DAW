<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
    <p>
        <asp:LinkButton ID="LinkInicio" runat="server" PostBackUrl="~/Default.aspx">Inicio</asp:LinkButton>&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkEmpleados" runat="server" PostBackUrl="~/Empleados.aspx">Empleados</asp:LinkButton>&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkPrestaciones" runat="server" PostBackUrl="~/Prestaciones.aspx">Prestaciones</asp:LinkButton>
    </p>
    <h1>
        ACME INNOVACIÓN, S. FIG.
    </h1>
    <h3>
        Gestión de Prestaciones Sociales
    </h3>
<hr />
<style>
    p{
        margin:0;
        padding:0;
        text-align:center;
    }
    h1{
        margin:0;
        padding-top:3%;
        text-align:center;
    }
    h3{
        font-family:Arial;
        padding:0;
        margin:0;
        text-align:center;
    }
</style>