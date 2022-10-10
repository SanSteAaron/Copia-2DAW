<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="GesPresta.Empleados" Trace="true"%>

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
        <div class="Contenido">
            <h2 class="Titulo">DATOS DE LOS EMPLEADOS</h2>
            <div>
                <div class="Texto">Código Empleado</div>
                <asp:TextBox class="aspForms" ID="txtCodEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">NIF</div>
                <asp:TextBox class="aspForms" ID="txtNifEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Apellidos y Nombre</div>
                <asp:TextBox class="aspForms" ID="txtNomEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Dirección</div>
                <asp:TextBox class="aspForms" ID="txtDirEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Ciudad</div>
                <asp:TextBox class="aspForms" ID="txtCiuEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Teléfonos</div>
                <asp:TextBox class="aspForms" ID="txtTelEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Fecha de Nacimiento</div>    
                <asp:TextBox class="aspForms" ID="txtFnaEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Fecha de ingreso</div>
                <asp:TextBox class="aspForms" ID="txtFinEmp" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Sexo</div>
                <asp:RadioButtonList ID="rblSexEmp" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="M">Mujer</asp:ListItem>
                    <asp:ListItem Selected="True" Value="H">Hombre</asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <div>
                <div class="Texto">Departamento</div>
                <asp:DropDownList ID="ddlDepEmp" runat="server">
                    <asp:ListItem Selected="True" Value="Investigación">Investigación</asp:ListItem>
                    <asp:ListItem Value="Desarrollo">Desarrollo</asp:ListItem>
                    <asp:ListItem Value="Innovación">Innovación</asp:ListItem>
                    <asp:ListItem Value="Administración">Administración</asp:ListItem>
                </asp:DropDownList>
            </div>
                <br />
                <div class="DivFormEnviar">
                    <asp:Button ID="cdmEnviar" Text="Enviar"  runat="server" />
                </div> 
            </div>
    </form>
</body>
</html>
