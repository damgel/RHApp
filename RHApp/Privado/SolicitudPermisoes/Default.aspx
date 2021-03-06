﻿<%@ Page Title="SolicitudPermisoList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.SolicitudPermisoes.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Solicitud de Permisos</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idSolicitudPermiso" 
			ItemType="RHApp.Models.SolicitudPermiso"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro Solicitud de Permisos
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Solicitud de Permiso" CommandName="Sort" CommandArgument="idSolicitudPermiso" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Fecha de Inicio" CommandName="Sort" CommandArgument="FechaInicio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Fecha de Fin" CommandName="Sort" CommandArgument="FechaFin" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dias Solicitados" CommandName="Sort" CommandArgument="DiasSolicitados" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dias Aprobados" CommandName="Sort" CommandArgument="DiasAprobados" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Jefe Recibe" CommandName="Sort" CommandArgument="JefeRecibe" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Fecha Grabacion" CommandName="Sort" CommandArgument="FechaGrabacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Fecha Aprobacion" CommandName="Sort" CommandArgument="FechaAprobacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Comentarios" CommandName="Sort" CommandArgument="Comentarios" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Empleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Escalonamiento de Permiso" CommandName="Sort" CommandArgument="idEscalonamientoPermiso" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Tipo de Permiso" CommandName="Sort" CommandArgument="idTipoPermiso" runat="Server" />
							</th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
				<asp:DataPager PageSize="5"  runat="server">
					<Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button"  NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
				</asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
							<td>
								<asp:DynamicControl runat="server" DataField="idSolicitudPermiso" ID="idSolicitudPermiso" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DiasSolicitados" ID="DiasSolicitados" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DiasAprobados" ID="DiasAprobados" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="JefeRecibe" ID="JefeRecibe" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaGrabacion" ID="FechaGrabacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaAprobacion" ID="FechaAprobacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Comentarios" ID="Comentarios" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
							</td>
							<td>
								<%#: Item.EscalonamientoPermiso != null ? Item.EscalonamientoPermiso.Nombre : "" %>
							</td>
							<td>
								<%#: Item.TipoPermiso != null ? Item.TipoPermiso.Nombre : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudPermisoes/Details", Item.idSolicitudPermiso) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudPermisoes/Edit", Item.idSolicitudPermiso) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudPermisoes/Delete", Item.idSolicitudPermiso) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

