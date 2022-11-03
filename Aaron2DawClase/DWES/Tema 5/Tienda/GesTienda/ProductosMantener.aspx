<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="InfoContenido" runat="server">
    <div class="contenidotitulo" >Mantenimiento productos</div>
    <br />
    <div>
        <asp:Label ID="lblResultado" runat="server"></asp:Label>
    </div>
    <asp:Label ID="lblMensajes" ForeColor="red" runat="server"></asp:Label> 
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IdProducto], [DesPro], [PrePro] FROM [PRODUCTO]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Justify">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" DataFormatString="{0:n2}" HeaderText="Precio" SortExpression="PrePro">
            <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
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
    <br />
    <asp:Label ID="lblIdProducto" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtIdProducto" runat="server" Enabled="false"></asp:TextBox>

    <asp:Label ID="lblDesPro" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtDesPro" runat="server" Enabled="false"></asp:TextBox>

    <asp:Label ID="lblPrePro" runat="server" Text="Label"></asp:Label>
    <asp:TextBox ID="txtPrePro" runat="server" Enabled="false"></asp:TextBox>
    
    <asp:Label ID="lblIdUnidad" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="false"></asp:DropDownList>
    
    <asp:Label ID="lblIdTipo" runat="server" Text="Label"></asp:Label>
    <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="false"></asp:DropDownList>
</asp:Content>
