<%@ Page Title="UsuarioList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.Usuarios.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Usuarios Lista</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idUsuario" 
			ItemType="RHApp.DatabaseModel.Usuario"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontraron registros para  Usuarios
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idUsuario" CommandName="Sort" CommandArgument="idUsuario" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Usuario1" CommandName="Sort" CommandArgument="Usuario1" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Password" CommandName="Sort" CommandArgument="Password" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaCreacion" CommandName="Sort" CommandArgument="FechaCreacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idUsuario" ID="idUsuario" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Usuario1" ID="Usuario1" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Password" ID="Password" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaCreacion" ID="FechaCreacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Usuarios/Details", Item.idUsuario) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Usuarios/Edit", Item.idUsuario) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Usuarios/Delete", Item.idUsuario) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

