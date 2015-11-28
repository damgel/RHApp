<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="RHApp.Account.Acceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="validation-summary-errors">
                <asp:Literal runat="server" ID="FailureText" />
            </p>
            <fieldset>
                <legend>Acceso</legend>
                <ol>
                    <li>
                        <asp:Label runat="server" AssociatedControlID="UserName">Usuario</asp:Label>
                        <asp:TextBox ID="UserName" runat="server" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="El nombre de usuario es requerido" />
                    </li>
                    <li>
                        <asp:Label runat="server" AssociatedControlID="Password">Clave</asp:Label>
                        <asp:TextBox ID="Password" TextMode="Password" runat="server" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="El password es requerido" />
                    </li>
                    <li>
                        <asp:CheckBox runat="server" ID="RememberMe" />
                        <asp:Label runat="server" AssociatedControlID="RememberMe" CssClass="checkbox">Recuerdame?</asp:Label>
                    </li>
                </ol>
                <asp:Button runat="server" CommandName="Login" Text="Log in" OnClick="Unnamed6_Click" />
            </fieldset>
        </div>
    </form>
</body>
</html>
