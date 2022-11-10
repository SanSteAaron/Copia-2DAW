<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ControlError.aspx.cs" Inherits="GesTienda.ControlError" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        h1, h3{
            font-family: Arial, Helvetica, sans-serif;
            text-align:center;
            align-items:center;
        }
        #ErrorLabel{
            border:solid;
            margin-right:20%;
            margin-left:20%;
            padding-left:1%;
            padding-bottom:4%;
            padding-top:1%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div></div>
        <h1>Aplicación Web GesTienda</h1>
        <h3>Error en tiempo de ejecución</h3>
        <div id="ErrorLabel">
            <p>Error ASP.NET:</p>
            <asp:Label ID="lblErrorASP" runat="server" Text="" ForeColor="Red"></asp:Label>
            <br />
            <p>Error ADO.NET:</p>
            <asp:Label ID="lblErrorADO" runat="server" Text="" ForeColor="Red"></asp:Label>
        </div>
        <br/>
    </form>
</body>
</html>
