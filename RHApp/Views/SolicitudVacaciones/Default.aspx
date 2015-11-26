<%@ Page Title="SolicitudVacacioneList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.SolicitudVacaciones.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>SolicitudVacaciones List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idSolicitudVacaciones" 
			ItemType="RHApp.DatabaseModel.SolicitudVacacione"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for SolicitudVacaciones
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idSolicitudVacaciones" CommandName="Sort" CommandArgument="idSolicitudVacaciones" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaInicio" CommandName="Sort" CommandArgument="FechaInicio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaFin" CommandName="Sort" CommandArgument="FechaFin" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaMaxAprobacion" CommandName="Sort" CommandArgument="FechaMaxAprobacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Comentarios" CommandName="Sort" CommandArgument="Comentarios" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="NumDias" CommandName="Sort" CommandArgument="NumDias" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEmpleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEscalonamientoVacacion" CommandName="Sort" CommandArgument="idEscalonamientoVacacion" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idSolicitudVacaciones" ID="idSolicitudVacaciones" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaMaxAprobacion" ID="FechaMaxAprobacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Comentarios" ID="Comentarios" Mode="ReadOnly" />
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
							<td>
								<%#: Item.EscalonamientoVacacione != null ? Item.EscalonamientoVacacione.Nombre : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/SolicitudVacaciones/Details", Item.idSolicitudVacaciones) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/SolicitudVacaciones/Edit", Item.idSolicitudVacaciones) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/SolicitudVacaciones/Delete", Item.idSolicitudVacaciones) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

