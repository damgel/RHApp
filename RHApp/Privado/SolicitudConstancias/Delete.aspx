<%@ Page Title="SolicitudConstanciaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Privado.SolicitudConstancias.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this SolicitudConstancia?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudConstancia" DataKeyNames="idSolicitudConstancia"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the SolicitudConstancia with idSolicitudConstancia <%: Request.QueryString["idSolicitudConstancia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete SolicitudConstancia</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idSolicitudConstancia</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idSolicitudConstancia" ID="idSolicitudConstancia" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaSolicitud</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaSolicitud" ID="FechaSolicitud" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaImpresion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaImpresion" ID="FechaImpresion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>NumeroImpresiones</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="NumeroImpresiones" ID="NumeroImpresiones" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>EmpleadoImprime</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EmpleadoImprime" ID="EmpleadoImprime" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Dirigido</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Dirigido" ID="Dirigido" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Ciudad</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Ciudad" ID="Ciudad" Mode="ReadOnly" />
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
									<strong>idEmpleado</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoConstancia</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.TipoConstancia != null ? Item.TipoConstancia.Nombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoEnvio</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.TipoEnvio != null ? Item.TipoEnvio.nombre : "" %>
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

