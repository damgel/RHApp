<%@ Page Title="EscalonamientoVacacioneList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.EscalonamientoVacaciones.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>EscalonamientoVacaciones List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idEscalonamientoVacaciones" 
			ItemType="RHApp.Models.EscalonamientoVacacione"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro de EscalonamientoVacaciones
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idEscalonamientoVacaciones" CommandName="Sort" CommandArgument="idEscalonamientoVacaciones" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Nombre" CommandName="Sort" CommandArgument="Nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Dias" CommandName="Sort" CommandArgument="Dias" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idEscalonamientoVacaciones" ID="idEscalonamientoVacaciones" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Nombre" ID="Nombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Dias" ID="Dias" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EscalonamientoVacaciones/Details", Item.idEscalonamientoVacaciones) %>' Text="Detalles" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EscalonamientoVacaciones/Edit", Item.idEscalonamientoVacaciones) %>' Text="Editar" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EscalonamientoVacaciones/Delete", Item.idEscalonamientoVacaciones) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

