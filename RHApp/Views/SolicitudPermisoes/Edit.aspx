<%@ Page Title="SolicitudPermisoEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Views.SolicitudPermisoes.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.SolicitudPermiso" DefaultMode="Edit" DataKeyNames="idSolicitudPermiso"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the SolicitudPermiso with idSolicitudPermiso <%: Request.QueryString["idSolicitudPermiso"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit SolicitudPermiso</legend>
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
								DataTypeName="RHApp.DatabaseModel.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEscalonamientoPermiso" 
								DataTypeName="RHApp.DatabaseModel.EscalonamientoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoPermisos" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idTipoPermiso" 
								DataTypeName="RHApp.DatabaseModel.TipoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idTipoPermiso" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

