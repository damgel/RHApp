﻿<%@ Page Title="PlazaEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.Plazas.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.Plaza" DefaultMode="Edit" DataKeyNames="idPlaza"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Plaza with idPlaza <%: Request.QueryString["idPlaza"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit Plaza</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="Departamento" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Nombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Ubicacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="PlazaPadre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Contrato" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="OfertaTrabajo" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="RelojMarcador" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Guardar Cambios" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

