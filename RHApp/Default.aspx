<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RHApp._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Bienvenidos a la Aplicacion de Gestion</h2>
            </hgroup>
            <p>
                Esta aplicacion ha sido desarrollada para la asignatura de <b class="text-capitalize text-danger">Ingenieria de Software 2</b>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">

    <h3>Modulos disponibles:</h3>
    <ol class="round">
        <li class="one">
            <a href="Privado/TipoPermisoes/Default.aspx">Tipo de Permisos</a>
            <a href="Privado/TipoSalarios/Default.aspx">Tipo de Salario</a>
            <a href="Privado/TipoEnvios/Default.aspx">Tipo de Envio</a>
            <a href="Privado/TipoConstancias/Default.aspx">Tipo de Constancia</a>
            <a href="Privado/FormaDePagoes/Default.aspx">Forma de Pago</a>
            <a href="Privado/EstadoCivils/Default.aspx">Estado Civil</a>
            <a href="Privado/CategoriaSugerencias/Default.aspx">Categoria de Sugerencia</a>
        </li>
        <li class="two">
            <a href="Privado/Pais/Default.aspx">Pais</a>
            <a href="Privado/Plazas/Default.aspx">Plazas</a>
            <a href="Privado/Religions/Default.aspx">Religion</a>
            <a href="Privado/Empleados/Default.aspx">Empleados</a>
        </li>
        <li class="three">
            <a href="Privado/EscalonamientoPermisos/Default.aspx">Escalonamiento Permisos</a>
            <a href="Privado/EscalonamientoVacaciones/Default.aspx">Escalonamiento Vacaciones</a>
        </li>
        <li class="four">
            <a href="Privado/BuzonSugerencias/Default.aspx">Buzon de Sugerencias</a>
            <a href="Privado/SolicitudPermisoes/Default.aspx">Solicitud de Permisos</a>
            <a href="Privado/SolicitudConstancias/Default.aspx">Solicitud de Constancias</a>
            <a href="Privado/SolicitudVacaciones/Default.aspx">Solicitud de Vacaciones</a>
            <a href="Privado/Usuarios/Default.aspx">Usuarios</a>
        </li>
    </ol>
</asp:Content>
