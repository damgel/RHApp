﻿<%@ Page Title="PlazaInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Privado.Plazas.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.Plaza" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Plaza</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="Departamento" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Nombre" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Ubicacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="PlazaPadre" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Contrato" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="OfertaTrabajo" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="RelojMarcador" runat="server" />
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
