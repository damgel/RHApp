<%@ Page Title="SolicitudVacacioneList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.SolicitudVacaciones.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <h2 class="text-info">Lista de Solicitudes Vacaciones</h2>
        <div class="container">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#all">Todas</a></li>
                <li><a data-toggle="tab" href="#aprobadas">Aprobadas</a></li>
                <li><a data-toggle="tab" href="#pendientes">Pendientes</a></li>
            </ul>
            <div class="tab-content">
                <div id="all" class="tab-pane fade in active">
                    <asp:ListView ID="ListView1" runat="server"
                        DataKeyNames="idSolicitudVacaciones"
                        ItemType="RHApp.Models.SolicitudVacacione"
                        SelectMethod="GetData">
                        <EmptyDataTemplate>
                            No se encontro ningun registro de Solicitud
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:LinkButton Text="idSolicitudVacaciones" Visible="false" CommandName="Sort" CommandArgument="idSolicitudVacaciones" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaInicio" CommandName="Sort" CommandArgument="FechaInicio" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaFin" CommandName="Sort" CommandArgument="FechaFin" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaMaxAprobacion" Visible="false" CommandName="Sort" CommandArgument="FechaMaxAprobacion" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="NumDias" CommandName="Sort" CommandArgument="NumDias" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Empleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="EscalonamientoVacacion" Visible="false" CommandName="Sort" CommandArgument="idEscalonamientoVacacion" runat="Server" />
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
                                    <asp:DynamicControl runat="server" Visible="false" DataField="idSolicitudVacaciones" ID="idSolicitudVacaciones" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaMaxAprobacion" Visible="false" ID="FechaMaxAprobacion" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="NumDias" ID="NumDias" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
                                </td>
                                <%--<td style="display:none">
								<%#: Item.EscalonamientoVacacione != null ? Item.EscalonamientoVacacione.Nombre : "" %>
							</td>--%>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Details", Item.idSolicitudVacaciones) %>' Text="Detalles" />
                                    | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Edit", Item.idSolicitudVacaciones) %>' Text="Editar" />
                                    | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Delete", Item.idSolicitudVacaciones) %>' Text="Eliminar" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <div id="aprobadas" class="tab-pane fade">
                    <asp:ListView ID="ListView2" runat="server"
                        DataKeyNames="idSolicitudVacaciones"
                        ItemType="RHApp.Models.SolicitudVacacione"
                        SelectMethod="GetAprobadas">
                        <EmptyDataTemplate>
                            No se encontro ninguna Solicitud Aprobada
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:LinkButton Text="idSolicitudVacaciones" Visible="false" CommandName="Sort" CommandArgument="idSolicitudVacaciones" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaInicio" CommandName="Sort" CommandArgument="FechaInicio" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaFin" CommandName="Sort" CommandArgument="FechaFin" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaMaxAprobacion" Visible="false" CommandName="Sort" CommandArgument="FechaMaxAprobacion" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="NumDias" CommandName="Sort" CommandArgument="NumDias" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Empleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="EscalonamientoVacacion" Visible="false" CommandName="Sort" CommandArgument="idEscalonamientoVacacion" runat="Server" />
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
                                    <asp:DynamicControl runat="server" Visible="false" DataField="idSolicitudVacaciones" ID="idSolicitudVacaciones" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaMaxAprobacion" Visible="false" ID="FechaMaxAprobacion" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="NumDias" ID="NumDias" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
                                </td>
                                <%--<td style="display:none">
								<%#: Item.EscalonamientoVacacione != null ? Item.EscalonamientoVacacione.Nombre : "" %>
							</td>--%>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Details", Item.idSolicitudVacaciones) %>' Text="Detalles" />
                                    | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Edit", Item.idSolicitudVacaciones) %>' Text="Editar" />
                                    | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Delete", Item.idSolicitudVacaciones) %>' Text="Eliminar" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
                <div id="pendientes" class="tab-pane fade">
                    <asp:ListView ID="ListView3" runat="server"
                        DataKeyNames="idSolicitudVacaciones"
                        ItemType="RHApp.Models.SolicitudVacacione"
                        SelectMethod="GetPendientes">
                        <EmptyDataTemplate>
                            No se encontro ninguna Solicitud Pendiente
                        </EmptyDataTemplate>
                        <LayoutTemplate>
                            <table class="table table-responsive">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:LinkButton Text="idSolicitudVacaciones" Visible="false" CommandName="Sort" CommandArgument="idSolicitudVacaciones" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaInicio" CommandName="Sort" CommandArgument="FechaInicio" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaFin" CommandName="Sort" CommandArgument="FechaFin" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="FechaMaxAprobacion" Visible="false" CommandName="Sort" CommandArgument="FechaMaxAprobacion" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="NumDias" CommandName="Sort" CommandArgument="NumDias" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="Empleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
                                        </th>
                                        <th>
                                            <asp:LinkButton Text="EscalonamientoVacacion" Visible="false" CommandName="Sort" CommandArgument="idEscalonamientoVacacion" runat="Server" />
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
                                    <asp:DynamicControl runat="server" Visible="false" DataField="idSolicitudVacaciones" ID="idSolicitudVacaciones" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="FechaMaxAprobacion" Visible="false" ID="FechaMaxAprobacion" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <asp:DynamicControl runat="server" DataField="NumDias" ID="NumDias" Mode="ReadOnly" />
                                </td>
                                <td>
                                    <%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
                                </td>
                                <%--<td style="display:none">
								<%#: Item.EscalonamientoVacacione != null ? Item.EscalonamientoVacacione.Nombre : "" %>
							</td>--%>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Details", Item.idSolicitudVacaciones) %>' Text="Detalles" />
                                    | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Edit", Item.idSolicitudVacaciones) %>' Text="Editar" />
                                    | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Aprobar", Item.idSolicitudVacaciones) %>' Text="Aprobar" />
                                    | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudVacaciones/Delete", Item.idSolicitudVacaciones) %>' Text="Eliminar" />
                                </td>
                            </tr>
                        </ItemTemplate>
                    </asp:ListView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

