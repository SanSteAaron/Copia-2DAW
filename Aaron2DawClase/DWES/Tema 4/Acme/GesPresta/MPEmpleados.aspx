<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPEmpleados.aspx.cs" Inherits="GesPresta.MPEmpleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    .Titulo {
        text-align: center;
    }

    .DivFormLabel {
        text-align: center;
    }

    .DivFormEnviar {
        text-align: center;
    }

    .Texto {
        text-align: right;
        width: 30%;
        margin-right: 3%;
        float: left;
    }

    .Fechas {
        margin-left: 20%;
        width: 14%;
        display: inline-block;
    }

    .Calendario {
        margin-left: 20%;
        width: 14%;
        display: inline-block;
    }

    .Antigüedad {
        margin-left: 4%;
        width: 16%;
        display: inline-block;
    }

    .TextoAnt {
        display: inline-block;
    }

    #ValidationSummary1 {
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <br />
         </div>
</asp:Content>
