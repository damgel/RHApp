﻿<%@ Page Title="EscalonamientoVacacioneDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.EscalonamientoVacaciones.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Estas seguro que deseas eliminar el registro EscalonamientoVacacione?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.EscalonamientoVacacione" DataKeyNames="idEscalonamientoVacaciones"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar EscalonamientoVacacione con idEscalonamientoVacaciones <%: Request.QueryString["idEscalonamientoVacaciones"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar EscalonamientoVacacione</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idEscalonamientoVacaciones</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idEscalonamientoVacaciones" ID="idEscalonamientoVacaciones" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Nombre</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Nombre" ID="Nombre" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Dias</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Dias" ID="Dias" Mode="ReadOnly" />
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

