<%@ Page Title="EmpleadoList" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Default.aspx.cs" Inherits="RHApp.Views.Empleados.Default" %>
<%@ Register TagPrefix="FriendlyUrls" Namespace="Microsoft.AspNet.FriendlyUrls" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <h2>Empleados List</h2>
    <p>
        <asp:HyperLink runat="server" NavigateUrl="Insert" Text="Create new" />
    </p>
    <div>
        <asp:ListView id="ListView1" runat="server"
            DataKeyNames="idEmpleado" 
			ItemType="RHApp.DatabaseModel.Empleado"
            SelectMethod="GetData">
            <EmptyDataTemplate>
                There are no entries found for Empleados
            </EmptyDataTemplate>
            <LayoutTemplate>
                <table class="table">
                    <thead>
                        <tr>
                            <th>
								<asp:LinkButton Text="idEmpleado" CommandName="Sort" CommandArgument="idEmpleado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="PrimerNombre" CommandName="Sort" CommandArgument="PrimerNombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="SegundoNombre" CommandName="Sort" CommandArgument="SegundoNombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="TercerNombre" CommandName="Sort" CommandArgument="TercerNombre" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="PrimerApellido" CommandName="Sort" CommandArgument="PrimerApellido" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="SegundoApellido" CommandName="Sort" CommandArgument="SegundoApellido" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="ApellidoCasado" CommandName="Sort" CommandArgument="ApellidoCasado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Genero" CommandName="Sort" CommandArgument="Genero" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Direccion" CommandName="Sort" CommandArgument="Direccion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Salario" CommandName="Sort" CommandArgument="Salario" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Estado" CommandName="Sort" CommandArgument="Estado" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Jornada" CommandName="Sort" CommandArgument="Jornada" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Vehiculo" CommandName="Sort" CommandArgument="Vehiculo" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="TelefonoCasa" CommandName="Sort" CommandArgument="TelefonoCasa" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="TelefonoMovil" CommandName="Sort" CommandArgument="TelefonoMovil" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="TelefonoOficina" CommandName="Sort" CommandArgument="TelefonoOficina" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Extension" CommandName="Sort" CommandArgument="Extension" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="Email" CommandName="Sort" CommandArgument="Email" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaNacimiento" CommandName="Sort" CommandArgument="FechaNacimiento" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaContratacion" CommandName="Sort" CommandArgument="FechaContratacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaDespido" CommandName="Sort" CommandArgument="FechaDespido" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="FechaGrabacion" CommandName="Sort" CommandArgument="FechaGrabacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="UsuarioGrabacion" CommandName="Sort" CommandArgument="UsuarioGrabacion" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idUsuario" CommandName="Sort" CommandArgument="idUsuario" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idPais" CommandName="Sort" CommandArgument="idPais" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idTipoSalario" CommandName="Sort" CommandArgument="idTipoSalario" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idPlaza" CommandName="Sort" CommandArgument="idPlaza" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idEstadoCivil" CommandName="Sort" CommandArgument="idEstadoCivil" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idFormaDePago" CommandName="Sort" CommandArgument="idFormaDePago" runat="Server" />
							</th>
                            <th>
								<asp:LinkButton Text="idReligion" CommandName="Sort" CommandArgument="idReligion" runat="Server" />
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
								<asp:DynamicControl runat="server" DataField="idEmpleado" ID="idEmpleado" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="PrimerNombre" ID="PrimerNombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="SegundoNombre" ID="SegundoNombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TercerNombre" ID="TercerNombre" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="PrimerApellido" ID="PrimerApellido" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="SegundoApellido" ID="SegundoApellido" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="ApellidoCasado" ID="ApellidoCasado" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Genero" ID="Genero" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Direccion" ID="Direccion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Salario" ID="Salario" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Jornada" ID="Jornada" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="Vehiculo" ID="Vehiculo" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TelefonoCasa" ID="TelefonoCasa" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="TelefonoMovil" ID="TelefonoMovil" Mode="ReadOnly" />
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
								<asp:DynamicControl runat="server" DataField="FechaNacimiento" ID="FechaNacimiento" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaContratacion" ID="FechaContratacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaDespido" ID="FechaDespido" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="FechaGrabacion" ID="FechaGrabacion" Mode="ReadOnly" />
							</td>
							<td>
								<asp:DynamicControl runat="server" DataField="UsuarioGrabacion" ID="UsuarioGrabacion" Mode="ReadOnly" />
							</td>
							<td>
								<%#: Item.Usuario != null ? Item.Usuario.Usuario1 : "" %>
							</td>
							<td>
								<%#: Item.Pai != null ? Item.Pai.Nombre : "" %>
							</td>
							<td>
								<%#: Item.TipoSalario != null ? Item.TipoSalario.idTipoSalario : 0 %>
							</td>
							<td>
								<%#: Item.Plaza != null ? Item.Plaza.Departamento : "" %>
							</td>
							<td>
								<%#: Item.EstadoCivil != null ? Item.EstadoCivil.nombre : "" %>
							</td>
							<td>
								<%#: Item.FormaDePago != null ? Item.FormaDePago.Descripcion : "" %>
							</td>
							<td>
								<%#: Item.Religion != null ? Item.Religion.nombre : "" %>
							</td>
                    <td>
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Empleados/Details", Item.idEmpleado) %>' Text="Details" /> | 
					    <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Empleados/Edit", Item.idEmpleado) %>' Text="Edit" /> | 
                        <asp:HyperLink runat="server" NavigateUrl='<%# FriendlyUrl.Href("~/Views/Empleados/Delete", Item.idEmpleado) %>' Text="Delete" />
                    </td>
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

