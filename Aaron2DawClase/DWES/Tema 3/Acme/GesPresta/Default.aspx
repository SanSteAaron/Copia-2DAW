<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GesPresta.Default" %>

<%@ Register src="Cabecera.ascx" tagname="Cabecera" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACME</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:Cabecera ID="Cabecera1" runat="server" />
        </div>
        <div>
            <p class="pDefault">
            La corporación ACME está comprometida con sus empleados. Para ello ha establecido una serie de prestaciones que pueden utilizar sus empleados para obtener ayudas sociales asociados a diversos gastos de tipo familiar, médico, etc.
            </p>    
            <br />
            <p class="pDefault">
            Esta aplicación a través de Web permite realizar todas las tareas de gestión relacionadas con la prestación de ayudas a los empleados.
            </p>    
            <br />
            <p class="pDefault">
            Para cualquier duda o consulta puede contactar con el Departamento de Ayuda Social: <asp:LinkButton ID="LinkAyudaS" runat="server">ayuda.social@acme.com</asp:LinkButton>
            </p>
        </div>
    </form>
</body>
</html>
<style>
    .pDefault{
        text-align:left;
    }
</style>