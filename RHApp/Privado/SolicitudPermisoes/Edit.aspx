<%@ Page Title="SolicitudPermisoEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.SolicitudPermisoes.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudPermiso" DefaultMode="Edit" DataKeyNames="idSolicitudPermiso"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se puede encontrar la solicitud de Permiso:  <%: Request.QueryString["idSolicitudPermiso"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Editar Solicitud de Permiso</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="FechaInicio" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaFin" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DiasSolicitados" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DiasAprobados" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="JefeRecibe" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaGrabacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaAprobacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Comentarios" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.Models.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEscalonamientoPermiso" 
								DataTypeName="RHApp.Models.EscalonamientoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoPermisos" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idTipoPermiso" 
								DataTypeName="RHApp.Models.TipoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idTipoPermiso" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Guardar Cambios" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancelar" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

