<%@ Page Title="EscalonamientoVacacione Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="RHApp.Privado.EscalonamientoVacaciones.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="RHApp.Models.EscalonamientoVacacione" DataKeyNames="idEscalonamientoVacaciones"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the EscalonamientoVacacione with idEscalonamientoVacaciones <%: Request.QueryString["idEscalonamientoVacaciones"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>EscalonamientoVacacione Details</legend>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

