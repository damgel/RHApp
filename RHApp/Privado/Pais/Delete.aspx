<%@ Page Title="PaiDelete" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Delete.aspx.cs" Inherits="RHApp.Privado.Pais.Delete" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <h3>Are you sure want to delete this Pai?</h3>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.Pai" DataKeyNames="idPais"
            DeleteMethod="DeleteItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Pai with idPais <%: Request.QueryString["idPais"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Delete Pai</legend>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>idPais</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="idPais" ID="idPais" Mode="ReadOnly" />
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
									<strong>Gerundio</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="Gerundio" ID="Gerundio" Mode="ReadOnly" />
								</div>
							</div>
							<div class="row">
								<div class="col-sm-2 text-right">
									<strong>CodigoArea</strong>
								</div>
								<div class="col-sm-4">
									<asp:DynamicControl runat="server" DataField="CodigoArea" ID="CodigoArea" Mode="ReadOnly" />
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

