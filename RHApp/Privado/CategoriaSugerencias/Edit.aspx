﻿<%@ Page Title="CategoriaSugerenciaEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.CategoriaSugerencias.Edit" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.CategoriaSugerencia" DefaultMode="Edit" DataKeyNames="idCategoriaSugerencia"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CategoriaSugerencia with idCategoriaSugerencia <%: Request.QueryString["idCategoriaSugerencia"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Edit CategoriaSugerencia</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="nombre" runat="server" />
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

