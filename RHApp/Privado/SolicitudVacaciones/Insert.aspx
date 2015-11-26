<%@ Page Title="SolicitudVacacioneInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Privado.SolicitudVacaciones.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudVacacione" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert SolicitudVacacione</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaInicio" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaFin" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaMaxAprobacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Comentarios" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="NumDias" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.Models.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEscalonamientoVacacion" 
								DataTypeName="RHApp.Models.EscalonamientoVacacione" 
								DataTextField="Nombre" 
								DataValueField="idEscalonamientoVacaciones" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Guardar" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
