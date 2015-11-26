<%@ Page Title="SolicitudPermisoDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.SolicitudPermisoes.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this SolicitudPermiso?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.SolicitudPermiso" DataKeyNames="idSolicitudPermiso"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar SolicitudPermiso with idSolicitudPermiso <%: Request.QueryString["idSolicitudPermiso"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar SolicitudPermiso</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idSolicitudPermiso</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idSolicitudPermiso" ID="idSolicitudPermiso" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaInicio</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaInicio" ID="FechaInicio" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaFin</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaFin" ID="FechaFin" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DiasSolicitados</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DiasSolicitados" ID="DiasSolicitados" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>DiasAprobados</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DiasAprobados" ID="DiasAprobados" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>JefeRecibe</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="JefeRecibe" ID="JefeRecibe" Mode="ReadOnly" />
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
									<strong>FechaAprobacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaAprobacion" ID="FechaAprobacion" Mode="ReadOnly" />
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
									<strong>Comentarios</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Comentarios" ID="Comentarios" Mode="ReadOnly" />
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
									<strong>idEscalonamientoPermiso</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.EscalonamientoPermiso != null ? Item.EscalonamientoPermiso.Nombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoPermiso</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.TipoPermiso != null ? Item.TipoPermiso.Nombre : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

