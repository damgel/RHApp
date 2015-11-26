<%@ Page Title="SolicitudPermisoInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Views.SolicitudPermisoes.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.SolicitudPermiso" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Guardar SolicitudPermiso</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaInicio" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaFin" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DiasSolicitados" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="DiasAprobados" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="JefeRecibe" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaGrabacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaAprobacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Comentarios" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.DatabaseModel.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEscalonamientoPermiso" 
								DataTypeName="RHApp.DatabaseModel.EscalonamientoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoPermisos" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idTipoPermiso" 
								DataTypeName="RHApp.DatabaseModel.TipoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idTipoPermiso" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Guardar" Text="Guardar" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancelar" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
