<%@ Page Title="BuzonSugerencia Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="RHApp.Views.BuzonSugerencias.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.BuzonSugerencia" DataKeyNames="idBuzonSugerencia"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar BuzonSugerencia con idBuzonSugerencia <%: Request.QueryString["idBuzonSugerencia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>BuzonSugerencia Details</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idBuzonSugerencia</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idBuzonSugerencia" ID="idBuzonSugerencia" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Asunto</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Asunto" ID="Asunto" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Detalles</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Detalles" ID="Detalles" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idEmpleado</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.Empleado != null ? Item.Empleado.PrimerNombre : "" %>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idCategoriaSugerencia</strong>
								</div>
								<div class="col-sm-4">
									<%#: Item.CategoriaSugerencia != null ? Item.CategoriaSugerencia.nombre : "" %>
								</div>
							</div>
                 	<div class="row">
					  &nbsp;
					</div>
					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Regresar" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

