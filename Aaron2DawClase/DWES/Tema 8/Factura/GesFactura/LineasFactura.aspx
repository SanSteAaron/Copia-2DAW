<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineasFactura.aspx.cs" Inherits="GesFactura.LineasFactura" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="text-align:center">Uso de Servicio Web - Cálculos factura de un artículo</h1>
            <br />
            <div>
                <div>
                    <div style="text-align: right;width: 48%;margin-right: 4%;float: left;">Cantidad</div>
                    <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <div style="text-align: right;width: 48%;margin-right: 4%;float: left;">Precio</div>
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <div style="text-align: right;width: 48%;margin-right: 4%;float: left;">Descuento (%)</div>
                    <asp:TextBox ID="txtDescuento" runat="server"></asp:TextBox>
                </div>
                <br />
                <div>
                    <div style="text-align: right;width: 48%;margin-right: 4%;float: left;">Tipo de IVA (%)</div>
                    <asp:TextBox ID="txtTipoIVA" runat="server"></asp:TextBox>
                </div>
                <br />
            </div>
            <br />
            <br />
            <div style="text-align:center">
                <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <p style="text-align:center">Resultados de los cálculos:</p>
            <br />
            <div>
                <table style="width:50%; margin-left:25%;">
                    <tr>
                        <th>Bruto</th>
                        <th>Descuento</th>
                        <th>Base Imponible</th>
                        <th>IVA</th>
                        <th>Total</th>
                    </tr>
                    <tr>
                        <td><asp:Label ID="lblBruto" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblDescuento" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblBaseImponible" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblIva" runat="server" Text=""></asp:Label></td>
                        <td><asp:Label ID="lblTotal" runat="server" Text=""></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
