<%@ Page Title="TipoPermisoList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.TipoPermisoes.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Tipo de Permisos</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo Tipo de Permiso" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idTipoPermiso" 
			ItemType="RHApp.Models.TipoPermiso"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun Tipo de Permisos
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="Tipo de Permiso" CommandName="Sort" CommandArgument="idTipoPermiso" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nombre" CommandName="Sort" CommandArgument="Nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Goce de Sueldo" CommandName="Sort" CommandArgument="GoceSueldo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dias Maximo" CommandName="Sort" CommandArgument="DiasMax" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Requiere Comprobante" CommandName="Sort" CommandArgument="RequiereComprobante" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Escalonamiento de Dias" CommandName="Sort" CommandArgument="EscalonamientoDias" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Escalonamiento de Permisos" CommandName="Sort" CommandArgument="EscalonamientoPermisos" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idTipoPermiso" ID="idTipoPermiso" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Nombre" ID="Nombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="GoceSueldo" ID="GoceSueldo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="DiasMax" ID="DiasMax" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="RequiereComprobante" ID="RequiereComprobante" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="EscalonamientoDias" ID="EscalonamientoDias" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="EscalonamientoPermisos" ID="EscalonamientoPermisos" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoPermisoes/Details", Item.idTipoPermiso) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoPermisoes/Edit", Item.idTipoPermiso) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoPermisoes/Delete", Item.idTipoPermiso) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

