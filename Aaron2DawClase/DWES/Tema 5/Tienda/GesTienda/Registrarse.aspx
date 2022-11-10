<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="GesTienda.Registrarse" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Tienda</title>
    <link href="~/Estilos/HojaEstilo.css" rel="stylesheet" type="text/css" />
    <style>
        .Texto{
            width:50%;
            text-align:right;
            display:inline-block;
        }
        .boton{
            text-align:center;
            
        }
    </style>
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
            <h4 style="font-family:Arial, Helvetica, sans-serif; text-align:center; margin-bottom:1%;">Registro de Usuario</h4>
            <div>
                <div class="Texto">Correo electrónico:</div>
                <asp:TextBox ID="txtCorCli" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Contraseña:</div>
                <asp:TextBox ID="txtPassword1" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Introduzca nuevamente la contraseña:</div>
                <asp:TextBox ID="txtPassword2" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">NIE/NIF/CIF:</div>
                <asp:TextBox ID="txtIdCliente" runat="server"></asp:TextBox>
            </div>
            <div>
                <div class="Texto">Nombre/Razón Social:</div>
                <asp:TextBox ID="txtNomCli" runat="server"></asp:TextBox>
                <div>
                <div class="Texto">Dirección:</div>
                <asp:TextBox ID="txtDirCli" runat="server"></asp:TextBox>
            </div>
                <div>
                <div class="Texto">Población:</div>
                <asp:TextBox ID="txtPobCli" runat="server"></asp:TextBox>
            </div>
                <div>
                <div class="Texto">Código Postal:</div>
                <asp:TextBox ID="txtCpoCli" runat="server"></asp:TextBox>
            </div>
                <div>
                <div class="Texto">Teléfono:</div>
                <asp:TextBox ID="txtTelCli" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="boton">
                <asp:Button ID="btnInsertar" runat="server" Text="Insertar" />
            </div>
            
        </div>
    </form>
</body>
</html>
