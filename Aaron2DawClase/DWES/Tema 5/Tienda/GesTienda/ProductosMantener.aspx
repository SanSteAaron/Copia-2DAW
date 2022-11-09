﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageAdm.Master" AutoEventWireup="true" CodeBehind="ProductosMantener.aspx.cs" Inherits="GesTienda.ProductosMantener" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .Texto {
            text-align: right;
            width: 15%;
            margin-right: 1%;
            float: left;
        }
        .Botones{
            margin-left:42%;
            margin-right:24%;
            text-align:center;
        }
    </style>
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
    <asp:GridView ID="grdProductos" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdProducto" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" HorizontalAlign="Left" Width="40%" OnSelectedIndexChanged="grdProductos_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="IdProducto" HeaderText="Id Producto" ReadOnly="True" SortExpression="IdProducto" />
            <asp:BoundField DataField="DesPro" HeaderText="Descripción" SortExpression="DesPro" />
            <asp:BoundField DataField="PrePro" DataFormatString="{0:n2}" HeaderText="Precio" SortExpression="PrePro">
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
    <div>
        <div class="Texto">
            <asp:Label ID="lblIdProducto" runat="server" Text="Id. Producto"></asp:Label>
        </div>
        <asp:TextBox ID="txtIdProducto" runat="server" Enabled="false" ></asp:TextBox>
    </div>
    <div >
        <div class="Texto">
            <asp:Label ID="lblDesPro" runat="server" Text="Descripción"></asp:Label>
        </div>
        <asp:TextBox ID="txtDesPro" runat="server" Enabled="false"></asp:TextBox>
    </div>
    <div >
        <div class="Texto"> 
            <asp:Label ID="lblPrePro" runat="server" Text="Precio"></asp:Label>
        </div>
        <asp:TextBox ID="txtPrePro" runat="server" Enabled="false" Text="0"></asp:TextBox>
    </div>
    <div >
        <div class="Texto">
            <asp:Label ID="lblIdUnidad" runat="server" Text="Unidad"></asp:Label>
        </div>       
        <asp:DropDownList ID="ddlIdUnidad" runat="server" Enabled="False" DataSourceID="SqlDataSource2" DataTextField="IdUnidad" DataValueField="IdUnidad"></asp:DropDownList>
    </div>
    <div >
        <div class="Texto">
            <asp:Label ID="lblIdTipo" runat="server" Text="Tipo Producto"></asp:Label>
        </div>
        <asp:DropDownList ID="ddlIdTipo" runat="server" Enabled="False" DataSourceID="SqlDataSource3" DataTextField="DesTip" DataValueField="IdTipo"></asp:DropDownList>
    </div>
    <br />
    <div class="Botones">
        <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" Visible="true" OnClick="btnNuevo_Click" />
        <asp:Button ID="btnEditar" runat="server" Text="Editar" Visible="false" OnClick="btnEditar_Click" />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Visible="false" OnClick="btnEliminar_Click" />
        <asp:Button ID="btnInsertar" runat="server" Text="Insertar" Visible="false" OnClick="btnInsertar_Click" />
        <asp:Button ID="btnModificar" runat="server" Text="Modificar" Visible="false" OnClick="btnModificar_Click" />
        <asp:Button ID="btnBorrar" runat="server" Text="Borrar" Visible="false" OnClick="btnBorrar_Click" />
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Visible="false" OnClick="btnCancelar_Click" />
    </div> 
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [UNIDAD]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [TIPO]"></asp:SqlDataSource>
</asp:Content>
