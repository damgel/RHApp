<%@ Page Title="BuzonSugerenciaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.BuzonSugerencias.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this BuzonSugerencia?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.BuzonSugerencia" DataKeyNames="idBuzonSugerencia"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the BuzonSugerencia with idBuzonSugerencia <%: Request.QueryString["idBuzonSugerencia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete BuzonSugerencia</legend>
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
							<asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" CssClass="btn btn-danger" />
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

