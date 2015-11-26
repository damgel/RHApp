<%@ Page Title="AuditoriaInternaInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Views.AuditoriaInternas.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.AuditoriaInterna" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Guardar AuditoriaInterna</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaModificacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="UsuarioGrabacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="CambiosRealizados" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.DatabaseModel.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
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
