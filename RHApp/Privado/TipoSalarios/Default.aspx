<%@ Page Title="TipoSalarioList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.TipoSalarios.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>TipoSalarios List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="idTipoSalario"
            ItemType="RHApp.Models.TipoSalario"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro de TipoSalarios
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
                                <asp:LinkButton Text="idTipoSalario" CommandName="Sort" CommandArgument="idTipoSalario" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="ValorInicial" CommandName="Sort" CommandArgument="ValorInicial" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="ValorFinal" CommandName="Sort" CommandArgument="ValorFinal" runat="Server" />
                            </th>
                            <th>&nbsp;</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr runat="server" id="itemPlaceholder" />
                    </tbody>
                </table>
                <asp:DataPager PageSize="5" runat="server">
                    <Fields>
                        <asp:NextPreviousPagerField ShowLastPageButton="False" ShowNextPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                        <asp:NumericPagerField ButtonType="Button" NumericButtonCssClass="btn" CurrentPageLabelCssClass="btn disabled" NextPreviousButtonCssClass="btn" />
                        <asp:NextPreviousPagerField ShowFirstPageButton="False" ShowPreviousPageButton="False" ButtonType="Button" ButtonCssClass="btn" />
                    </Fields>
                </asp:DataPager>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:DynamicControl runat="server" DataField="idTipoSalario" ID="idTipoSalario" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="ValorInicial" ID="ValorInicial" DataFormatString="{0:C}" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="ValorFinal" ID="ValorFinal" DataFormatString="{0:C}" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoSalarios/Details", Item.idTipoSalario) %>' Text="Detalles" />
                        | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoSalarios/Edit", Item.idTipoSalario) %>' Text="Editar" />
                        | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/TipoSalarios/Delete", Item.idTipoSalario) %>' Text="Eliminar" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

