<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesTienda.Default" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tienda</title>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <div id="cabecera">
               <div id="cabecera1">
                  <br />
                  comerciodaw.com &nbsp;
               </div>
               <div id="cabecera2">
                   <br />
                   &nbsp;&nbsp;TIENDA ONLINE - SHOPPING DAW<br />
                   <br />
               </div>
            </div>
        <h2 style="font-family:Arial, Helvetica, sans-serif; text-align:center; margin-bottom:2%;">GesTienda</h2>
        <div style="margin-left:40%; font-family: Arial, Helvetica, sans-serif;">
               <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate" >
                   <LayoutTemplate>
                       <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                           <tr>
                               <td>
                                   <table cellpadding="0">
                                       <tr>
                                           <td align="center" colspan="2"><b>Iniciar sesión</b></td>
                                       </tr>
                                       <tr>
                                           <td align="right">
                                               <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Correo Electrónico:</asp:Label>
                                           </td>
                                           <td>
                                               <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="El nombre de usuario es obligatorio." ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td align="right">
                                               <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                           </td>
                                           <td>
                                               <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                           </td>
                                       </tr>
                                       <tr>
                                           <td colspan="2">&nbsp;</td>
                                       </tr>
                                       <tr>
                                           <td colspan="2"></td>
                                       </tr>
                                       <tr>
                                           <td align="center" colspan="2">
                                               <asp:Button ID="LoginButton" runat="server" CommandName="Login" Text="Inicio de sesión" ValidationGroup="Login1" />
                                           </td>
                                       </tr>
                                   </table>
                               </td>
                           </tr>
                       </table>
                   </LayoutTemplate>
               </asp:Login>
        </div>
            <div style="text-align: center">
                <asp:Label ID="lblMensajes" runat="server" Text="" ForeColor="Red"></asp:Label>
                <br />
                <br />
                <asp:LinkButton ID="linkRegistrarse" runat="server" OnClick="linkRegistrarse_Click">Registrarse</asp:LinkButton>
            </div>
            <div id="pie">
                <br />
                <br />
                © Desarrollo de Aplicaciones Web interactivas con Acceso a Datos
                <br />
                IES Mare Nostrum (Alicante)
            </div>
    </div>
    </form>
</body>
</html>
