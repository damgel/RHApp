<%@ Page Title="AuditoriaInternaEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Views.AuditoriaInternas.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.AuditoriaInterna" DefaultMode="Edit" DataKeyNames="idAuditoriaInterna"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar AuditoriaInterna with idAuditoriaInterna <%: Request.QueryString["idAuditoriaInterna"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Editar AuditoriaInterna</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="FechaModificacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="UsuarioGrabacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="CambiosRealizados" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEmpleado" 
								DataTypeName="RHApp.DatabaseModel.Empleado" 
								DataTextField="PrimerNombre" 
								DataValueField="idEmpleado" 
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

