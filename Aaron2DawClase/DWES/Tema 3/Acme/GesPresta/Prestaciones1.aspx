<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones1.aspx.cs" Inherits="GesPresta.Prestaciones1" %>

<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="HojaDeEstilosPrestaciones.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera runat="server" ID="Cabecera" />
        <div>
            <h2>DATOS DE LAS PRESTACIONES</h2>
            <div id="DivFormText">
                <p>Código Prestación</p>
                <p>Descripción</p>
                <p>Importe Fijo</p>
                <p>Porcentaje del Importe</p>
                <p>Tipo de Prestación</p>
            </div>
            <div id="DivForm">
                <asp:TextBox class="aspForms" ID="txtCodPre" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtDesPre" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtImpPre" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtPorPre" runat="server"></asp:TextBox>
                <br />
                <asp:DropDownList ID="ddlTipPre" runat="server">
                    <asp:ListItem Selected="True" Value="Ocular">Ocular</asp:ListItem>
                    <asp:ListItem Value="Dentaria">Dentaria</asp:ListItem>
                    <asp:ListItem Value="Familiar">Familiar</asp:ListItem>
                    <asp:ListItem Value="Otras">Otras</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <asp:Button  id="cdmEnviar" text="Enviar" value="BEnviar" runat="server" PostBackUrl="~/Prestaciones1Respuesta.aspx" />
    </form>
</body>
</html>
