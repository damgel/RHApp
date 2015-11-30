<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="RHApp.Errores._404" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8 col-lg-offset-2">
        <div class=" details">
            <h1 class="text-danger">El recurso solicitado no fue encontrado.</h1>
            <h3 class="text-muted">Lamentamos cualquier inconveniente.</h3>
            <p>
                <b><a href="../Privado/Dashboard.aspx" class="text-danger">Regresar</a></b>
            </p>
        </div>
    </div>
</asp:Content>
