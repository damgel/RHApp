<%@ Page Title="TipoPermisoEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.TipoPermisoes.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.TipoPermiso" DefaultMode="Edit" DataKeyNames="idTipoPermiso"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                TipoPermiso <%: Request.QueryString["idTipoPermiso"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Editar Tipo de Permiso</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Nombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="GoceSueldo" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="DiasMax" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="RequiereComprobante" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="EscalonamientoDias" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="EscalonamientoPermisos" runat="server" />
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

