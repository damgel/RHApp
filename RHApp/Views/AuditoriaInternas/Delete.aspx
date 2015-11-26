<%@ Page Title="AuditoriaInternaDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Views.AuditoriaInternas.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this AuditoriaInterna?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.DatabaseModel.AuditoriaInterna" DataKeyNames="idAuditoriaInterna"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se pudo encontrar AuditoriaInterna with idAuditoriaInterna <%: Request.QueryString["idAuditoriaInterna"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar AuditoriaInterna</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idAuditoriaInterna</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idAuditoriaInterna" ID="idAuditoriaInterna" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>FechaModificacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaModificacion" ID="FechaModificacion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>UsuarioGrabacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="UsuarioGrabacion" ID="UsuarioGrabacion" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CambiosRealizados</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CambiosRealizados" ID="CambiosRealizados" Mode="ReadOnly" />
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

