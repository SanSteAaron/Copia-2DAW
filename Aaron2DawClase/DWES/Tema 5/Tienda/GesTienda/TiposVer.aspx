﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="TiposVer.aspx.cs" Inherits="GesTienda.TiposVer" %>
<%@ OutputCache Duration="1" VaryByParam="None" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo" style="text-align:center">Tipos de productos</div>
        <br />
        <div>
            <asp:Label ID="lblResultado" runat="server"></asp:Label>
        </div>
        <br />
        <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label>
        <br />
        <br />
    <asp:SqlDataSource ID="SqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
    <asp:GridView ID="grdTipos" runat="server" DataSourceID="SqlDataSource" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="IdTipo" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="50%">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="IdTipo" HeaderText="Código" ReadOnly="True" SortExpression="IdTipo" />
            <asp:BoundField DataField="DesTip" HeaderText="Descripción" SortExpression="DesTip" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerSettings FirstPageText="Primero" LastPageText="Último" Mode="NextPreviousFirstLast" NextPageText="Siguiente" PreviousPageText="Anterior" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
</asp:Content>
