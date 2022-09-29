<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados1.aspx.cs" Inherits="GesPresta.Empleados1" %>

<%@ Register Src="~/Cabecera.ascx" TagPrefix="uc1" TagName="Cabecera" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="HojaDeEstilosEmpleados.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <uc1:Cabecera runat="server" ID="Cabecera" />
        <div>
            <h2>DATOS DE LOS EMPLEADOS</h2>
            <div id="DivFormText">
                <p>Código Empleado</p>
                <p>NIF</p>
                <p>Apellidos y Nombre</p>
                <p>Dirección</p>
                <p>Ciudad</p>
                <p>Teléfonos</p>
                <p>Fecha de Nacimiento</p>
                <p>Fecha de ingreso</p>
                <p>Sexo</p>
                <p>Departamento</p>
            </div>
            <div id="DivForm">
                <asp:TextBox class="aspForms" ID="txtCodEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtNifEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtNomEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtDirEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtCiuEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtTelEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtFnaEmp" runat="server"></asp:TextBox>
                <br />
                <asp:TextBox class="aspForms" ID="txtFinEmp" runat="server"></asp:TextBox>
                <br />
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                </asp:RadioButtonList>
                <br />
                <asp:DropDownList ID="ddlDepEmp" runat="server">
                    <asp:ListItem Selected="True" Value="Investigación">Investigación</asp:ListItem>
                    <asp:ListItem Value="Desarrollo">Desarrollo</asp:ListItem>
                    <asp:ListItem Value="Innovación">Innovación</asp:ListItem>
                    <asp:ListItem Value="Administración">Administración</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <br />
                <asp:Button ID="cdmEnviar" Text="Enviar"  runat="server" OnClick="cdmEnviar_Click" />
        <br />
        <br />
        <div>
            <asp:Label ID="lblValores" runat="server" Visible="false" BackColor="#66FFFF" Width="60%"></asp:Label>
        </div>
    </form>
</body>
</html>
