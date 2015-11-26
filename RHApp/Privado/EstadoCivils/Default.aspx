<%@ Page Title="EstadoCivilList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.EstadoCivils.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>EstadoCivils List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idEstadoCivil" 
			ItemType="RHApp.Models.EstadoCivil"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for EstadoCivils
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idEstadoCivil" CommandName="Sort" CommandArgument="idEstadoCivil" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="nombre" CommandName="Sort" CommandArgument="nombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaGrabacion" CommandName="Sort" CommandArgument="FechaGrabacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="UsuarioGrabacion" CommandName="Sort" CommandArgument="UsuarioGrabacion" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idEstadoCivil" ID="idEstadoCivil" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="nombre" ID="nombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaGrabacion" ID="FechaGrabacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UsuarioGrabacion" ID="UsuarioGrabacion" Mode="ReadOnly" />
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EstadoCivils/Details", Item.idEstadoCivil) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EstadoCivils/Edit", Item.idEstadoCivil) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/EstadoCivils/Delete", Item.idEstadoCivil) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

