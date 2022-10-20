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

    #ValidationSummary {
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
                <asp:RequiredFieldValidator ID="rqdTxtCodEmp" Text="*" runat="server" ControlToValidate="txtCodEmp" ErrorMessage="El Código Empleado es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtCodEmp" Text="*" ForeColor="Green" ValidationExpression="\w\d{5}" ControlToValidate="txtCodEmp" runat="server" ErrorMessage="El formato introducido debe ser una letra y 5 dígitos"></asp:RegularExpressionValidator>
            </div>
            <div>
                <div class="Texto">NIF</div>
                <asp:TextBox class="aspForms" ID="txtNifEmp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="rqdTxtNifEmp" Text="*" runat="server" ControlToValidate="txtNifEmp" ErrorMessage="El NIF es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtNifEmp" Text="*" ForeColor="Green" ValidationExpression="\d{8}-\w" ControlToValidate="txtNifEmp" runat="server" ErrorMessage="El formato introducido debe ser 8 dígitos, un guión y una letra"></asp:RegularExpressionValidator>
            </div>
            <div>
                <div class="Texto">Apellidos y Nombre</div>
                <asp:TextBox class="aspForms" ID="txtNomEmp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="rqdTxtNomEmp" Text="*" runat="server" ControlToValidate="txtNomEmp" ErrorMessage="El Nombre es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                
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
                <asp:RequiredFieldValidator id="rqdTxtTelEmp" Text="*" runat="server" ControlToValidate="txtTelEmp" ErrorMessage="El Teléfono es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                
            </div>
            <div>
                <div class="Texto">Fecha de Nacimiento</div>  
                <asp:TextBox class="aspForms" ID="txtFnaEmp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator id="rqdTxtFnaEmp" Text="*" runat="server" ControlToValidate="txtFnaEmp" ErrorMessage="La Fecha de Nacimiento es obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cmpTxtFnaEmp" Text="*" ControlToValidate="txtFnaEmp" ControlToCompare="txtFinEmp" runat="server" ForeColor="Red" Type="Date" Operator="LessThan" ErrorMessage="La Fecha de Ingreso del Empleado debe ser mayor que la Fecha de Nacimiento"></asp:CompareValidator>
                <asp:RegularExpressionValidator ID="regTxtFnaEmp" Text="*" ForeColor="Green" ValidationExpression="\d\d\/\d\d\/\d\d\d\d" ControlToValidate="txtFnaEmp" runat="server" ErrorMessage="El formato introducido debe ser dd/mm/aaaa"></asp:RegularExpressionValidator>
            </div>
            <div>
                <div class="Texto">Fecha de ingreso</div>
                <asp:TextBox class="aspForms" ID="txtFinEmp" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdTxtFinEmp" Text="*" runat="server" ControlToValidate="txtFinEmp" ErrorMessage="La Fecha de Ingreso es obligatoria" ForeColor="Red"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="regTxtFinEmp" ForeColor="Green" Text="*" ValidationExpression="\d\d\/\d\d\/\d\d\d\d" ControlToValidate="txtFinEmp" runat="server" ErrorMessage="El formato introducido debe ser dd/mm/aaaa"></asp:RegularExpressionValidator>
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
        <div id ="ValidationSummary">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" DisplayMode="List"  />
        </div>             
            </div>
</asp:Content>
