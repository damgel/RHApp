<%@ Page Title="TipoEnvioList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.TipoEnvios.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>TipoEnvios List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idTipoEnvio" 
			ItemType="RHApp.Models.TipoEnvio"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro de TipoEnvios
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idTipoEnvio" CommandName="Sort" CommandArgument="idTipoEnvio" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nombre" CommandName="Sort" CommandArgument="nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaCreacion" CommandName="Sort" CommandArgument="FechaCreacion" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idTipoEnvio" ID="idTipoEnvio" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="nombre" ID="nombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaCreacion" ID="FechaCreacion" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoEnvios/Details", Item.idTipoEnvio) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoEnvios/Edit", Item.idTipoEnvio) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoEnvios/Delete", Item.idTipoEnvio) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

