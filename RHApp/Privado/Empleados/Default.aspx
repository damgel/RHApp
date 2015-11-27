<%@ Page Title="EmpleadoList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Privado.Empleados.Default" %>

<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Empleados List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Crear Nuevo" />
    </p>
    <div>
        <asp:ListView ID="ListView1" runat="server"
            DataKeyNames="idEmpleado"
            ItemType="RHApp.Models.Empleado"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                No se encontro ningun registro de Empleados
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table table-responsive">
                    <thead>
                        <tr>
                            <th>
                                <asp:LinkButton Text="#" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Primer Nombre" CommandName="Sort" CommandArgument="PrimerNombre" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Primer Apellido" CommandName="Sort" CommandArgument="PrimerApellido" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Telefono Oficina" CommandName="Sort" CommandArgument="TelefonoOficina" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Extension" CommandName="Sort" CommandArgument="Extension" runat="Server" />
                            </th>
                            <th>
                                <asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
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
                        <asp:DynamicControl runat="server" DataField="idEmpleado" ID="idEmpleado" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="PrimerNombre" ID="PrimerNombre" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="PrimerApellido" ID="PrimerApellido" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="TelefonoOficina" ID="TelefonoOficina" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Extension" ID="Extension" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
                    </td>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/Empleados/Details", Item.idEmpleado) %>' Text="Detalles" />
                        | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/Empleados/Edit", Item.idEmpleado) %>' Text="Editar" />
                        | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/Empleados/Delete", Item.idEmpleado) %>' Text="Eliminar" />
                        | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Privado/Empleados/Despedir", Item.idEmpleado) %>' Text="Despedir" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

