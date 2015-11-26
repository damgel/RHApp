<%@ Page Title="SolicitudConstanciaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.SolicitudConstancias.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>SolicitudConstancias List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
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
								<asp:LinkButton Text="idSolicitudConstancia" CommandName="Sort" CommandArgument="idSolicitudConstancia" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaSolicitud" CommandName="Sort" CommandArgument="FechaSolicitud" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaImpresion" CommandName="Sort" CommandArgument="FechaImpresion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="NumeroImpresiones" CommandName="Sort" CommandArgument="NumeroImpresiones" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="EmpleadoImprime" CommandName="Sort" CommandArgument="EmpleadoImprime" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dirigido" CommandName="Sort" CommandArgument="Dirigido" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Ciudad" CommandName="Sort" CommandArgument="Ciudad" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEmpleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idTipoConstancia" CommandName="Sort" CommandArgument="idTipoConstancia" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idTipoEnvio" CommandName="Sort" CommandArgument="idTipoEnvio" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idSolicitudConstancia" ID="idSolicitudConstancia" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaSolicitud" ID="FechaSolicitud" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaImpresion" ID="FechaImpresion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="NumeroImpresiones" ID="NumeroImpresiones" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="EmpleadoImprime" ID="EmpleadoImprime" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Dirigido" ID="Dirigido" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Ciudad" ID="Ciudad" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
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
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Details", Item.idSolicitudConstancia) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Edit", Item.idSolicitudConstancia) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/SolicitudConstancias/Delete", Item.idSolicitudConstancia) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

