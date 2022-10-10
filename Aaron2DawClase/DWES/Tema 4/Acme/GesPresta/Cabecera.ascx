<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Cabecera.ascx.cs" Inherits="GesPresta.Cabecera" %>
<link href="HojaDeEstilosCabecera.css" rel="stylesheet" />
    <p id="Nav">
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
