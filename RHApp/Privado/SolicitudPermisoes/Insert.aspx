<%@ Page Title="SolicitudPermisoInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Privado.SolicitudPermisoes.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudPermiso" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert SolicitudPermiso</legend>
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
								DataTypeName="RHApp.Models.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEscalonamientoPermiso" 
								DataTypeName="RHApp.Models.EscalonamientoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoPermisos" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idTipoPermiso" 
								DataTypeName="RHApp.Models.TipoPermiso" 
								DataTextField="Nombre" 
								DataValueField="idTipoPermiso" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Insert" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
