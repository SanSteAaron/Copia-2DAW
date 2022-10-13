<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Prestaciones.aspx.cs" Inherits="GesPresta.Prestaciones" %>

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
                <asp:RequiredFieldValidator ID="rqdTxtCodPre" ControlToValidate="txtCodPre" runat="server" ErrorMessage="El Código de Prestación es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtCodPre" ValidationExpression="\d{3}-\d{3}-\d{3}" ControlToValidate="txtCodPre" runat="server" ErrorMessage="El formato introducido debe ser 3 dígitos, un guión, 3 dígitos, un guión, 3 dígitos" ForeColor="Green"></asp:RegularExpressionValidator>
       
                <br />
                <asp:TextBox class="aspForms" ID="txtDesPre" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtImpPre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdTxtImpPre" ControlToValidate="txtImpPre" runat="server" ErrorMessage="El Importe Fijo es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngTxtImpPre" MinimumValue="0,00" MaximumValue="500,00" ControlToValidate="txtImpPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0,00 y 500,00" ForeColor="Red" Type="Double"></asp:RangeValidator>
                <br />
                <asp:TextBox class="aspForms" ID="txtPorPre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdTxtPorPre" ControlToValidate="txtPorPre" runat="server" ErrorMessage="El Porcentaje del Importe es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngTxtPorPre" MinimumValue="0,00%" MaximumValue="15,00%" ControlToValidate="txtPorPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0,00% y 15,00%" ForeColor="Red" Type="Double"></asp:RangeValidator>
                <br />
                <asp:DropDownList ID="ddlTipPre" runat="server">
                    <asp:ListItem Selected="True" Value="Ocular">Ocular</asp:ListItem>
                    <asp:ListItem Value="Dentaria">Dentaria</asp:ListItem>
                    <asp:ListItem Value="Familiar">Familiar</asp:ListItem>
                    <asp:ListItem Value="Otras">Otras</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <asp:Button  id="cdmEnviar" text="Enviar" value="BEnviar" runat="server" />
    </form>
</body>
</html>
