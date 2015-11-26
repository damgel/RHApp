﻿<%@ Page Title="EscalonamientoPermisoEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Views.EscalonamientoPermisos.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.EscalonamientoPermiso" DefaultMode="Edit" DataKeyNames="idEscalonamientoPermisos"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar EscalonamientoPermiso with idEscalonamientoPermisos <%: Request.QueryString["idEscalonamientoPermisos"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Editar EscalonamientoPermiso</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Nombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Dias" runat="server" />
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

