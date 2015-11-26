<%@ Page Title="SolicitudConstanciaInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Privado.SolicitudConstancias.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.SolicitudConstancia" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert SolicitudConstancia</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaSolicitud" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaImpresion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="NumeroImpresiones" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="EmpleadoImprime" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Dirigido" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Ciudad" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Estado" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.Models.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idTipoConstancia" 
								DataTypeName="RHApp.Models.TipoConstancia" 
								DataTextField="Nombre" 
								DataValueField="idTipoConstancia" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idTipoEnvio" 
								DataTypeName="RHApp.Models.TipoEnvio" 
								DataTextField="nombre" 
								DataValueField="idTipoEnvio" 
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
