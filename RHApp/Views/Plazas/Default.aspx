<%@ Page Title="PlazaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.Plazas.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Plazas List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idPlaza" 
			ItemType="RHApp.DatabaseModel.Plaza"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Plazas
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idPlaza" CommandName="Sort" CommandArgument="idPlaza" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Departamento" CommandName="Sort" CommandArgument="Departamento" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nombre" CommandName="Sort" CommandArgument="Nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Ubicacion" CommandName="Sort" CommandArgument="Ubicacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="PlazaPadre" CommandName="Sort" CommandArgument="PlazaPadre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Contrato" CommandName="Sort" CommandArgument="Contrato" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaCreacion" CommandName="Sort" CommandArgument="FechaCreacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaModificacion" CommandName="Sort" CommandArgument="FechaModificacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="UsuarioModificacion" CommandName="Sort" CommandArgument="UsuarioModificacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="OfertaTrabajo" CommandName="Sort" CommandArgument="OfertaTrabajo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="RelojMarcador" CommandName="Sort" CommandArgument="RelojMarcador" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idPlaza" ID="idPlaza" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Departamento" ID="Departamento" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Nombre" ID="Nombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Ubicacion" ID="Ubicacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="PlazaPadre" ID="PlazaPadre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Contrato" ID="Contrato" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaCreacion" ID="FechaCreacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaModificacion" ID="FechaModificacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UsuarioModificacion" ID="UsuarioModificacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="OfertaTrabajo" ID="OfertaTrabajo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="RelojMarcador" ID="RelojMarcador" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Plazas/Details", Item.idPlaza) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Plazas/Edit", Item.idPlaza) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Plazas/Delete", Item.idPlaza) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

