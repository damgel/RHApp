<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="RHApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h2>Dashboard</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
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
</asp:Content>

