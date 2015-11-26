<%@ Page Title="SolicitudVacacione Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="RHApp.Views.SolicitudVacaciones.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.SolicitudVacacione" DataKeyNames="idSolicitudVacaciones"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar SolicitudVacacione with idSolicitudVacaciones <%: Request.QueryString["idSolicitudVacaciones"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>SolicitudVacacione Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idSolicitudVacaciones</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idSolicitudVacaciones" ID="idSolicitudVacaciones" Mode="ReadOnly" />
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
									<strong>FechaMaxAprobacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaMaxAprobacion" ID="FechaMaxAprobacion" Mode="ReadOnly" />
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
									<strong>Estado</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Estado" ID="Estado" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>NumDias</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="NumDias" ID="NumDias" Mode="ReadOnly" />
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
									<strong>idEscalonamientoVacacion</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.EscalonamientoVacacione != null ? Item.EscalonamientoVacacione.Nombre : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Regresar" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

