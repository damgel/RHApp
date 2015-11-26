<%@ Page Title="SolicitudConstanciaEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Views.SolicitudConstancias.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.SolicitudConstancia" DefaultMode="Edit" DataKeyNames="idSolicitudConstancia"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar SolicitudConstancia con idSolicitudConstancia <%: Request.QueryString["idSolicitudConstancia"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Editar SolicitudConstancia</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="FechaSolicitud" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaImpresion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="NumeroImpresiones" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="EmpleadoImprime" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Dirigido" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Ciudad" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Estado" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.DatabaseModel.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idTipoConstancia" 
								DataTypeName="RHApp.DatabaseModel.TipoConstancia" 
								DataTextField="Nombre" 
								DataValueField="idTipoConstancia" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idTipoEnvio" 
								DataTypeName="RHApp.DatabaseModel.TipoEnvio" 
								DataTextField="nombre" 
								DataValueField="idTipoEnvio" 
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

