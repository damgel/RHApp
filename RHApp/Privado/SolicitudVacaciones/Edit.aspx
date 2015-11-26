<%@ Page Title="SolicitudVacacioneEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.SolicitudVacaciones.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudVacacione" DefaultMode="Edit" DataKeyNames="idSolicitudVacaciones"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the SolicitudVacacione with idSolicitudVacaciones <%: Request.QueryString["idSolicitudVacaciones"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit SolicitudVacacione</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="FechaInicio" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaFin" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaMaxAprobacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Comentarios" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="NumDias" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.Models.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEscalonamientoVacacion" 
								DataTypeName="RHApp.Models.EscalonamientoVacacione" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoVacaciones" 
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

