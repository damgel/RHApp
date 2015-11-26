<%@ Page Title="EstadoCivilDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Privado.EstadoCivils.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this EstadoCivil?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.EstadoCivil" DataKeyNames="idEstadoCivil"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the EstadoCivil with idEstadoCivil <%: Request.QueryString["idEstadoCivil"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete EstadoCivil</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idEstadoCivil</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idEstadoCivil" ID="idEstadoCivil" Mode="ReadOnly" />
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
								<div class="col-sm-2 text-right">
									<strong>FechaGrabacion</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="FechaGrabacion" ID="FechaGrabacion" Mode="ReadOnly" />
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

