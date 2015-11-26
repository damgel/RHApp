<%@ Page Title="EmpleadoInsert" Language="C#" MasterPageFile="~/Site.Master" CodeBehind="Insert.aspx.cs" Inherits="RHApp.Privado.Empleados.Insert" %>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
		<p>&nbsp;</p>
        <asp:FormView runat="server"
            ItemType="RHApp.Models.Empleado" DefaultMode="Insert"
            InsertItemPosition="FirstItem" InsertMethod="InsertItem"
            OnItemCommand="ItemCommand" RenderOuterTable="false">
            <InsertItemTemplate>
                <fieldset class="form-horizontal">
				<legend>Insert Empleado</legend>
		        <asp:ValidationSummary runat="server" CssClass="alert alert-danger" />
						    <asp:DynamicControl Mode="Insert" DataField="PrimerNombre" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SegundoNombre" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TercerNombre" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="PrimerApellido" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="SegundoApellido" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="ApellidoCasado" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Genero" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Direccion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Salario" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Estado" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Jornada" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Vehiculo" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TelefonoCasa" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TelefonoMovil" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="TelefonoOficina" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Extension" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="Email" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaNacimiento" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaContratacion" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaDespido" runat="server" />
						    <asp:DynamicControl Mode="Insert" DataField="FechaGrabacion" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idUsuario" 
								DataTypeName="RHApp.Models.Usuario" 
								DataTextField="Usuario1" 
								DataValueField="idUsuario" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idPais" 
								DataTypeName="RHApp.Models.Pai" 
								DataTextField="Nombre" 
								DataValueField="idPais" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idTipoSalario" 
								DataTypeName="RHApp.Models.TipoSalario" 
								DataTextField="idTipoSalario" 
								DataValueField="idTipoSalario" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idPlaza" 
								DataTypeName="RHApp.Models.Plaza" 
								DataTextField="Departamento" 
								DataValueField="idPlaza" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idEstadoCivil" 
								DataTypeName="RHApp.Models.EstadoCivil" 
								DataTextField="nombre" 
								DataValueField="idEstadoCivil" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idFormaDePago" 
								DataTypeName="RHApp.Models.FormaDePago" 
								DataTextField="Descripcion" 
								DataValueField="idFormaDePago" 
								UIHint="ForeignKey" runat="server" />
							<asp:DynamicControl Mode="Insert" 
								DataField="idReligion" 
								DataTypeName="RHApp.Models.Religion" 
								DataTextField="nombre" 
								DataValueField="idReligion" 
								UIHint="ForeignKey" runat="server" />
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <asp:Button runat="server" ID="InsertButton" CommandName="Insert" Text="Guardar" CssClass="btn btn-primary" />
                            <asp:Button runat="server" ID="CancelButton" CommandName="Cancel" Text="Cancel" CausesValidation="false" CssClass="btn btn-default" />
                        </div>
					</div>
                </fieldset>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
</asp:Content>
