<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RHApp.Privado.Dashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="logged" runat="server" Text="Label"></asp:Label>
        <div>
            <h1>Super DashBoard</h1>
            <h3>Modulos disponibles:</h3>
            <ol class="round">
                <li class="one">
                    <a href="TipoPermisoes/Default.aspx">Tipo de Permisos</a>
                    <a href="TipoSalarios/Default.aspx">Tipo de Salario</a>
                    <a href="TipoEnvios/Default.aspx">Tipo de Envio</a>
                    <a href="TipoConstancias/Default.aspx">Tipo de Constancia</a>
                    <a href="FormaDePagoes/Default.aspx">Forma de Pago</a>
                    <a href="EstadoCivils/Default.aspx">Estado Civil</a>
                    <a href="CategoriaSugerencias/Default.aspx">Categoria de Sugerencia</a>
                </li>
                <li class="two">
                    <a href="Pais/Default.aspx">Pais</a>
                    <a href="Plazas/Default.aspx">Plazas</a>
                    <a href="Religions/Default.aspx">Religion</a>
                    <a href="Empleados/Default.aspx">Empleados</a>
                </li>
                <li class="three">
                    <a href="EscalonamientoPermisos/Default.aspx">Escalonamiento Permisos</a>
                    <a href="EscalonamientoVacaciones/Default.aspx">Escalonamiento Vacaciones</a>
                </li>
                <li class="four">
                    <a href="BuzonSugerencias/Default.aspx">Buzon de Sugerencias</a>
                    <a href="SolicitudPermisoes/Default.aspx">Solicitud de Permisos</a>
                    <a href="SolicitudConstancias/Default.aspx">Solicitud de Constancias</a>
                    <a href="SolicitudVacaciones/Default.aspx">Solicitud de Vacaciones</a>
                    <a href="Usuarios/Default.aspx">Usuarios</a>
                </li>
            </ol>
        </div>
    </form>
</body>
</html>
