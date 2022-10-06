<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmpleadosCalendar.aspx.cs" Inherits="GesPresta.EmpleadosCalendar" %>

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
            <br />
            <div class="Fechas">
                <div class="TextoCal">Fecha de Nacimiento</div>    
                <asp:TextBox class="aspForms" ID="txtFnaEmp" runat="server"></asp:TextBox>
            </div>
            <div class="Fechas">
                <div class="TextoCal">Fecha de ingreso</div>
                <asp:TextBox class="aspForms" ID="txtFinEmp" runat="server"></asp:TextBox>
            </div>
            <br />
            <div class="Calendario">
                <asp:Calendar ID="CalNacimiento" runat="server" OnSelectionChanged="CalNacimiento_SelectionChanged"></asp:Calendar>
            </div>
            <div class="Calendario">
                <asp:Calendar ID="CalIngreso" runat="server" OnSelectionChanged="CalIngreso_SelectionChanged"></asp:Calendar>
            </div>
            <div class="Antigüedad">
                <div class="ContAnt">
                    <div>Antigüedad:</div>
                </div>
                <div>
                    <asp:TextBox ID="txtAños" runat="server"></asp:TextBox>
                    <div class="TextoAnt">Años</div>
                </div>
                <div>
                    <asp:TextBox ID="txtMeses" runat="server"></asp:TextBox>
                    <div class="TextoAnt">Meses</div>
                </div>
                <div>
                    <asp:TextBox ID="txtDías" runat="server"></asp:TextBox>
                    <div class="TextoAnt">Días</div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <div class="DivFormEnviar">
                <asp:Button ID="cdmEnviar" Text="Enviar"  runat="server" OnClick="cdmEnviar_Click" />
            </div>                
            <br />
            <br />
            <div class="DivFormLabel">
                <asp:Label ID="lblError1" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <div class ="DivFormLabel">
                <asp:Label ID="lblError2" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <div class ="DivFormLabel">
                <asp:Label ID="lblError3" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <br />
            <br />
            <div class="DivFormLabel">
                <asp:Label ID="lblValores" runat="server" Visible="false" BackColor="#66FFFF" Width="60%"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
