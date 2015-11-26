<%@ Page Title="TipoConstanciaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.TipoConstancias.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this TipoConstancia?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.TipoConstancia" DataKeyNames="idTipoConstancia"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar TipoConstancia with idTipoConstancia <%: Request.QueryString["idTipoConstancia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar TipoConstancia</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoConstancia</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idTipoConstancia" ID="idTipoConstancia" Mode="ReadOnly" />
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
									<strong>MostrarDescuento</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="MostrarDescuento" ID="MostrarDescuento" Mode="ReadOnly" />
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

