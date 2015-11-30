<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="403.aspx.cs" Inherits="RHApp.Errores._403" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-8 col-lg-offset-2">
        <div class=" details">
            <h1 class="text-danger">No estas autorizado para ver el recurso solicitado</h1>
            <h3 class="text-muted">Lamentamos cualquier inconveniente.</h3>
            <p>
                Te sugerimos: <b><a href="../Privado/Dashboard.aspx" class="text-danger">Regresar</a></b>
            </p>
        </div>
    </div>
</asp:Content>
