<%@ Page Title="TipoPermisoList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.TipoPermisoes.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>TipoPermisoes Lista</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idTipoPermiso" 
			ItemType="RHApp.DatabaseModel.TipoPermiso"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontraron registros para  TipoPermisoes
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idTipoPermiso" CommandName="Sort" CommandArgument="idTipoPermiso" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nombre" CommandName="Sort" CommandArgument="Nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="GoceSueldo" CommandName="Sort" CommandArgument="GoceSueldo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="DiasMax" CommandName="Sort" CommandArgument="DiasMax" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="RequiereComprobante" CommandName="Sort" CommandArgument="RequiereComprobante" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="EscalonamientoDias" CommandName="Sort" CommandArgument="EscalonamientoDias" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="EscalonamientoPermisos" CommandName="Sort" CommandArgument="EscalonamientoPermisos" runat="Server" />
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
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/TipoPermisoes/Details", Item.idTipoPermiso) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/TipoPermisoes/Edit", Item.idTipoPermiso) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/TipoPermisoes/Delete", Item.idTipoPermiso) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

