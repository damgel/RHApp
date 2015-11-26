<%@ Page Title="EmpleadoEdit" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Edit.aspx.cs" Inherits="RHApp.Privado.Empleados.Edit" %>
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
                    <legend>Edit Empleado</legend>
					<asp:ValidationSummary runat="server" CssClass="alert alert-danger"  />                 
						    <asp:DynamicControl Mode="Edit" DataField="PrimerNombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="SegundoNombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TercerNombre" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="PrimerApellido" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="SegundoApellido" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="ApellidoCasado" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Genero" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Direccion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Salario" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Jornada" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Vehiculo" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TelefonoCasa" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TelefonoMovil" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="TelefonoOficina" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Extension" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaNacimiento" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaContratacion" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaDespido" runat="server" />
						    <asp:DynamicControl Mode="Edit" DataField="FechaGrabacion" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idUsuario" 
								DataTypeName="RHApp.Models.Usuario" 
								DataTextField="Usuario1" 
								DataValueField="idUsuario" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idPais" 
								DataTypeName="RHApp.Models.Pai" 
								DataTextField="Nombre" 
								DataValueField="idPais" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idTipoSalario" 
								DataTypeName="RHApp.Models.TipoSalario" 
								DataTextField="idTipoSalario" 
								DataValueField="idTipoSalario" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idPlaza" 
								DataTypeName="RHApp.Models.Plaza" 
								DataTextField="Departamento" 
								DataValueField="idPlaza" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idEstadoCivil" 
								DataTypeName="RHApp.Models.EstadoCivil" 
								DataTextField="nombre" 
								DataValueField="idEstadoCivil" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idFormaDePago" 
								DataTypeName="RHApp.Models.FormaDePago" 
								DataTextField="Descripcion" 
								DataValueField="idFormaDePago" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Edit" 
								DataField="idReligion" 
								DataTypeName="RHApp.Models.Religion" 
								DataTextField="nombre" 
								DataValueField="idReligion" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
							<asp:Button runat="server" ID="UpdateButton" CommandName="Update" Text="Update" CssClass="btn btn-primary" />
							<asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
						</div>
					</div>
                </fieldset>
            </EditItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>

