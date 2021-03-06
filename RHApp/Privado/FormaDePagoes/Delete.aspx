﻿<%@ Page Title="FormaDePagoDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Privado.FormaDePagoes.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Estas seguro que deseas eliminar esta FormaDePago?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.FormaDePago" DataKeyNames="idFormaDePago"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the FormaDePago with idFormaDePago <%: Request.QueryString["idFormaDePago"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar FormaDePago</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idFormaDePago</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idFormaDePago" ID="idFormaDePago" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Descripcion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Descripcion" ID="Descripcion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaCreacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaCreacion" ID="FechaCreacion" Mode="ReadOnly" />
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Eliminar" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

