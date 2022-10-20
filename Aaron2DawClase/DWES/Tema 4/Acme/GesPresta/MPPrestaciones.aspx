<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MPPrestaciones.aspx.cs" Inherits="GesPresta.MPPrestaciones" %>
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

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="Contenido">
            <h2 class="Titulo">DATOS DE LOS EMPLEADOS</h2>
            <div>
                <div class="Texto">Código Prestación</div>
                <asp:TextBox class="aspForms" ID="txtCodPre" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rqdTxtCodPre" ControlToValidate="txtCodPre" runat="server" ErrorMessage="El Código de Prestación es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="regTxtCodPre" ValidationExpression="\d{3}-\d{3}-\d{3}" ControlToValidate="txtCodPre" runat="server" ErrorMessage="El formato introducido debe ser 3 dígitos, un guión, 3 dígitos, un guión, 3 dígitos" ForeColor="Green"></asp:RegularExpressionValidator>
            </div>
            <div>
                <div class="Texto">Descripción</div>
                <asp:TextBox class="aspForms" ID="txtDesPre" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Importe Fijo</div>
                <asp:TextBox class="aspForms" ID="txtImpPre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdTxtImpPre" ControlToValidate="txtImpPre" runat="server" ErrorMessage="El Importe Fijo es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngTxtImpPre" MinimumValue="0,00" MaximumValue="500,00" ControlToValidate="txtImpPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0,00 y 500,00" ForeColor="Red" Type="Double"></asp:RangeValidator>
            </div>
            <div>
                <div class="Texto">Porcentaje del Importe</div>
                <asp:TextBox class="aspForms" ID="txtPorPre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqdTxtPorPre" ControlToValidate="txtPorPre" runat="server" ErrorMessage="El Porcentaje del Importe es obligatorio" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rngTxtPorPre" MinimumValue="0,00" MaximumValue="15,00" ControlToValidate="txtPorPre" runat="server" ErrorMessage="El valor introducido debe estar comprendido entre 0,00% y 15,00%" ForeColor="Red" Type="Double"></asp:RangeValidator>
            </div>
            <div>
                <div class="Texto">Tipo de Prestación</div>
                <asp:DropDownList ID="ddlTipPre" runat="server">
                    <asp:ListItem Value="Dentaria">Dentaria</asp:ListItem>
                    <asp:ListItem Value="Familiar">Familiar</asp:ListItem>
                    <asp:ListItem Selected="True" Value="Ocular">Ocular</asp:ListItem>
                    <asp:ListItem Value="Otras">Otras</asp:ListItem>
                </asp:DropDownList>
            </div>
                <br />
                <div class="DivFormEnviar">
                    <asp:Button ID="cdmEnviar" Text="Enviar"  runat="server" />
                </div>                
                <br />
         </div>
</asp:Content>
