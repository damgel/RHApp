<%@ Page Title="BuzonSugerenciaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.BuzonSugerencias.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>BuzonSugerencias List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idBuzonSugerencia" 
			ItemType="RHApp.Models.BuzonSugerencia"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro de BuzonSugerencias
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idBuzonSugerencia" CommandName="Sort" CommandArgument="idBuzonSugerencia" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Asunto" CommandName="Sort" CommandArgument="Asunto" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Detalles" CommandName="Sort" CommandArgument="Detalles" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEmpleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idCategoriaSugerencia" CommandName="Sort" CommandArgument="idCategoriaSugerencia" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idBuzonSugerencia" ID="idBuzonSugerencia" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Asunto" ID="Asunto" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Detalles" ID="Detalles" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
							</td>
							<td>
								<%#: Item.CategoriaSugerencia != null ? Item.CategoriaSugerencia.nombre : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/BuzonSugerencias/Details", Item.idBuzonSugerencia) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/BuzonSugerencias/Edit", Item.idBuzonSugerencia) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/BuzonSugerencias/Delete", Item.idBuzonSugerencia) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

