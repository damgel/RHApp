<%@ Page Title="SolicitudConstanciaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.SolicitudConstancias.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <h2 class="text-info">Lista de Solicitudes Constancias</h2>
        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#all">Todas</a></li>
            </ul>
            <div class="tab-content">
                <div id="all" class="tab-pane fade in active">
                    <asp:ListView ID="ListView1" runat="server"
                        DataKeyNames="idSolicitudConstancia"
                        ItemType="RHApp.Models.SolicitudConstancia"
                        SelectMethod="GetData">
                        <EmptyDataTemplate>
                            No se encontro ningun registro de SolicitudConstancias
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:LinkButton Text="idSolicitudConstancia" Visible="false" CommandName="Sort" CommandArgument="idSolicitudConstancia" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaSolicitud" CommandName="Sort" CommandArgument="FechaSolicitud" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaImpresion" Visible="false" CommandName="Sort" CommandArgument="FechaImpresion" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="NumeroImpresiones" Visible="false" CommandName="Sort" CommandArgument="NumeroImpresiones" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="EmpleadoImprime" Visible="false" CommandName="Sort" CommandArgument="EmpleadoImprime" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Dirigido" CommandName="Sort" CommandArgument="Dirigido" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Ciudad" CommandName="Sort" CommandArgument="Ciudad" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Estado" CommandName="Sort" Visible="false" CommandArgument="Estado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Codigo Empleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Tipo Constancia" CommandName="Sort" CommandArgument="idTipoConstancia" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Tipo Envio" CommandName="Sort" CommandArgument="idTipoEnvio" runat="Server" />
                                        </th>
                                        <th>&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr runat="server" id="itemPlaceholder" />
                                </tbody>
                            </table>
                            <asp:DataPager PageSize="5" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                                    <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                                    <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                                </Fields>
                            </asp:DataPager>
                        </LayoutTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:DynamicControl runat="server" Visible="false" DataField="idSolicitudConstancia" ID="idSolicitudConstancia" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaSolicitud" ID="FechaSolicitud" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaImpresion" Visible="false" ID="FechaImpresion" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="NumeroImpresiones" Visible="false" ID="NumeroImpresiones" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="EmpleadoImprime" Visible="false" ID="EmpleadoImprime" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Dirigido" ID="Dirigido" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Ciudad" ID="Ciudad" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Estado" Visible="false" ID="Estado" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
                                </td>
                                <td>
                                    <%#: Item.TipoConstancia != null ? Item.TipoConstancia.Nombre : "" %>
                                </td>
                                <td>
                                    <%#: Item.TipoEnvio != null ? Item.TipoEnvio.nombre : "" %>
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Details", Item.idSolicitudConstancia) %>' Text="Detalles" />
                                    | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Edit", Item.idSolicitudConstancia) %>' Text="Editar" />
                                    | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Delete", Item.idSolicitudConstancia) %>' Text="Eliminar" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

