<%@ Page Title="AuditoriaInternaList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.AuditoriaInternas.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>AuditoriaInternas Lista</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idAuditoriaInterna" 
			ItemType="RHApp.DatabaseModel.AuditoriaInterna"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontraron registros para  AuditoriaInternas
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idAuditoriaInterna" CommandName="Sort" CommandArgument="idAuditoriaInterna" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaModificacion" CommandName="Sort" CommandArgument="FechaModificacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="UsuarioGrabacion" CommandName="Sort" CommandArgument="UsuarioGrabacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="CambiosRealizados" CommandName="Sort" CommandArgument="CambiosRealizados" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEmpleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idAuditoriaInterna" ID="idAuditoriaInterna" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaModificacion" ID="FechaModificacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UsuarioGrabacion" ID="UsuarioGrabacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="CambiosRealizados" ID="CambiosRealizados" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/AuditoriaInternas/Details", Item.idAuditoriaInterna) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/AuditoriaInternas/Edit", Item.idAuditoriaInterna) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/AuditoriaInternas/Delete", Item.idAuditoriaInterna) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

