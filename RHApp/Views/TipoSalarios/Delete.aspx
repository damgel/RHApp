<%@ Page Title="TipoSalarioDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.TipoSalarios.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this TipoSalario?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.TipoSalario" DataKeyNames="idTipoSalario"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar TipoSalario with idTipoSalario <%: Request.QueryString["idTipoSalario"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar TipoSalario</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idTipoSalario</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idTipoSalario" ID="idTipoSalario" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ValorInicial</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ValorInicial" ID="ValorInicial" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>ValorFinal</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="ValorFinal" ID="ValorFinal" Mode="ReadOnly" />
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

