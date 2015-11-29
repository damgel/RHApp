<%@ Page Title="EmpleadoDespedir" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Despedir.aspx.cs" Inherits="RHApp.Privado.Empleados.Despedir" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.Empleado" DefaultMode="Edit" DataKeyNames="idEmpleado"
            UpdateMethod="UpdateItem" SelectMethod="GetItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <EmptyDataTemplate>
                Cannot find the Empleado with idEmpleado <%: Request.QueryString["idEmpleado"] %>
            </EmptyDataTemplate>
            <EditItemTemplate>
                <fieldset class="form-horizontal">
                    <legend>Despedir Empleado</legend>
                    <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
                    <asp:DynamicControl Mode="ReadOnly" DataField="idEmpleado" runat="server" /><br />
                    <asp:DynamicControl Mode="ReadOnly" DataField="PrimerNombre" runat="server" /><br />
                    <asp:DynamicControl Mode="ReadOnly" DataField="PrimerApellido" runat="server" /><br />
                    Estado:<b><asp:DynamicControl Mode="ReadOnly" DataField="Estado" runat="server" /></b><br />
                    <asp:DynamicControl Mode="ReadOnly" DataField="FechaContratacion" runat="server" /><br />
                    <asp:DynamicControl Mode="Edit" DataField="FechaDespido" runat="server" /><br />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Guardar Cambios" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

