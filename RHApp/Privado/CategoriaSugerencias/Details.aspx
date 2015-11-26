<%@ Page Title="CategoriaSugerencia Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="RHApp.Privado.CategoriaSugerencias.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="RHApp.Models.CategoriaSugerencia" DataKeyNames="idCategoriaSugerencia"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the CategoriaSugerencia with idCategoriaSugerencia <%: Request.QueryString["idCategoriaSugerencia"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>CategoriaSugerencia Details</legend>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Back" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

