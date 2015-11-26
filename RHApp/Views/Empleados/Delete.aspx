<%@ Page Title="EmpleadoDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.Empleados.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Empleado?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.Empleado" DataKeyNames="idEmpleado"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Empleado with idEmpleado <%: Request.QueryString["idEmpleado"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Empleado</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idEmpleado</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idEmpleado" ID="idEmpleado" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PrimerNombre</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PrimerNombre" ID="PrimerNombre" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SegundoNombre</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="SegundoNombre" ID="SegundoNombre" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TercerNombre</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TercerNombre" ID="TercerNombre" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>PrimerApellido</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="PrimerApellido" ID="PrimerApellido" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>SegundoApellido</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="SegundoApellido" ID="SegundoApellido" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ApellidoCasado</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ApellidoCasado" ID="ApellidoCasado" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Genero</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Genero" ID="Genero" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Direccion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Direccion" ID="Direccion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Salario</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Salario" ID="Salario" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Estado</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Jornada</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Jornada" ID="Jornada" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Vehiculo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Vehiculo" ID="Vehiculo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TelefonoCasa</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TelefonoCasa" ID="TelefonoCasa" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TelefonoMovil</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TelefonoMovil" ID="TelefonoMovil" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TelefonoOficina</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="TelefonoOficina" ID="TelefonoOficina" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Extension</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Extension" ID="Extension" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Email</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Email" ID="Email" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaNacimiento</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaNacimiento" ID="FechaNacimiento" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaContratacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaContratacion" ID="FechaContratacion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaDespido</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaDespido" ID="FechaDespido" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaGrabacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaGrabacion" ID="FechaGrabacion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UsuarioGrabacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UsuarioGrabacion" ID="UsuarioGrabacion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idUsuario</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Usuario != null ? Item.Usuario.Usuario1 : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idPais</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Pai != null ? Item.Pai.Nombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoSalario</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.TipoSalario != null ? Item.TipoSalario.idTipoSalario : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idPlaza</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Plaza != null ? Item.Plaza.Departamento : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idEstadoCivil</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.EstadoCivil != null ? Item.EstadoCivil.nombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idFormaDePago</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.FormaDePago != null ? Item.FormaDePago.Descripcion : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idReligion</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Religion != null ? Item.Religion.nombre : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

