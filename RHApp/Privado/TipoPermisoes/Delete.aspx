<%@ Page Title="TipoPermisoDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Privado.TipoPermisoes.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Estas seguro que deseas eliminar este  Tipo de Permiso?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.TipoPermiso" DataKeyNames="idTipoPermiso"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                No se puede encontrar el Tipo de Permiso:  <%: Request.QueryString["idTipoPermiso"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Eliminar Tipo de Permiso</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>TipoP de ermiso</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idTipoPermiso" ID="idTipoPermiso" Mode="ReadOnly" />
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
									<strong>Goce de Sueldo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="GoceSueldo" ID="GoceSueldo" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Dias Maximo</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="DiasMax" ID="DiasMax" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Requiere Comprobante</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="RequiereComprobante" ID="RequiereComprobante" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Escalonamiento de Dias</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EscalonamientoDias" ID="EscalonamientoDias" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>Escalonamiento de Permisos</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="EscalonamientoPermisos" ID="EscalonamientoPermisos" Mode="ReadOnly" />
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

