<%@ Page Title="CategoriaSugerenciaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.CategoriaSugerencias.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this CategoriaSugerencia?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.CategoriaSugerencia" DataKeyNames="idCategoriaSugerencia"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar CategoriaSugerencia with idCategoriaSugerencia <%: Request.QueryString["idCategoriaSugerencia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar CategoriaSugerencia</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idCategoriaSugerencia</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idCategoriaSugerencia" ID="idCategoriaSugerencia" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>nombre</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="nombre" ID="nombre" Mode="ReadOnly" />
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

