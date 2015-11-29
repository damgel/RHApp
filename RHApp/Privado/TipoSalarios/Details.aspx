<%@ Page Title="TipoSalario Details" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Details.aspx.cs" Inherits="RHApp.Privado.TipoSalarios.Details" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
      
        <asp:FormView runat="server"
            ItemType="RHApp.Models.TipoSalario" DataKeyNames="idTipoSalario"
            SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the TipoSalario with idTipoSalario <%: Request.QueryString["idTipoSalario"] %>
            </EmptyDataTemplate>
            <ItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>TipoSalario Details</legend>
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
							<asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Regresar" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </ItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

