<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acceso.aspx.cs" Inherits="RHApp.Account.Acceso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
  background: url(https://dl.dropboxusercontent.com/u/23299152/Wallpapers/wallpaper-22705.jpg) no-repeat center center fixed; 
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
  font-family: 'Roboto', sans-serif;
}

.login-card {
  padding: 40px;
  width: 274px;
  background-color: #F7F7F7;
  margin: 0 auto 10px;
  border-radius: 2px;
  box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
  overflow: hidden;
}

.login-card h1 {
  font-weight: 100;
  text-align: center;
  font-size: 2.3em;
}

.login-card input[type=submit] {
  width: 100%;
  display: block;
  margin-bottom: 10px;
  position: relative;
}

.login-card input[type=text], input[type=password] {
  height: 44px;
  font-size: 16px;
  width: 100%;
  margin-bottom: 10px;
  -webkit-appearance: none;
  background: #fff;
  border: 1px solid #d9d9d9;
  border-top: 1px solid #c0c0c0;
  /* border-radius: 2px; */
  padding: 0 8px;
  box-sizing: border-box;
  -moz-box-sizing: border-box;
}

.login-card input[type=text]:hover, input[type=password]:hover {
  border: 1px solid #b9b9b9;
  border-top: 1px solid #a0a0a0;
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.1);
}

.login {
  text-align: center;
  font-size: 14px;
  font-family: 'Arial', sans-serif;
  font-weight: 700;
  height: 36px;
  padding: 0 8px;
/* border-radius: 3px; */
/* -webkit-user-select: none;
  user-select: none; */
}

.login-submit {
  /* border: 1px solid #3079ed; */
  border: 0px;
  color: #fff;
  text-shadow: 0 1px rgba(0,0,0,0.1); 
  background-color: #4d90fe;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#4787ed)); */
}

.login-submit:hover {
  /* border: 1px solid #2f5bb7; */
  border: 0px;
  text-shadow: 0 1px rgba(0,0,0,0.3);
  background-color: #357ae8;
  /* background-image: -webkit-gradient(linear, 0 0, 0 100%,   from(#4d90fe), to(#357ae8)); */
}

.login-card a {
  text-decoration: none;
  color: #666;
  font-weight: 400;
  text-align: center;
  display: inline-block;
  opacity: 0.6;
  transition: opacity ease 0.5s;
}

.login-card a:hover {
  opacity: 1;
}

.login-help {
  width: 100%;
  text-align: center;
  font-size: 12px;
}
    </style>
    <title></title>
</head>
<body>
    

    <div class="login-card">
        <table style="width:100%" >
            <tr >
                <td style="align-items:center;align-content:center;text-align:center">
                     <img src="../Images/user.PNG" width="100px" height="100px" /> 
                </td>
            </tr>
            <tr  >
                <td style="align-items:center;align-content:center;text-align:center">
                <h1> Acceso</h1>
                </td>
            </tr>
        </table>
       
     
  <form id="form1" runat="server">
        <div>
            <p class="validation-summary-errors">
                <asp:Literal runat="server" ID="FailureText" />
            </p>
            
                <table  >
                    <tr>
                        <td style="width:250px">
                            <asp:Label runat="server" AssociatedControlID="UserName" Text="Usuario" Font-Size="Medium"></asp:Label>
                        </td>
                        <td >
                            <asp:TextBox ID="UserName" runat="server" Text="ing.reyes" Width="200px" />
                        </td>
                        <td>
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="UserName" CssClass="field-validation-error" ErrorMessage="El nombre de usuario es requerido" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width:250px">
                             <asp:Label runat="server" AssociatedControlID="Password" Text="Contraseña" Font-Size="Medium"></asp:Label>
                        </td>
                       <td >
                            <asp:TextBox ID="Password" Width="200px"  TextMode="Password" Text="superpass" runat="server" />
                        </td>
                        <td>
                              <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="field-validation-error" ErrorMessage="El password es requerido" />
                        </td>
                    </tr>
                <tr>
                    <td colspan="3">
                        <br />
                        <br />
                    </td>
                </tr>
                    <tr>
                        <td colspan="3" style="text-align:right">
                            <asp:Button runat="server" CommandName="Login" Text="Entrar" Height="30px" Width="300px" OnClick="Unnamed6_Click" />
                        </td>
                    </tr>
                </table>
                
                
            
        </div>
    </form>
    
  <div class="login-help">
    <p>
        Credenciales de prueba:<br />
        usuario: <b  style="color: red">ing.reyes</b>
        Contraseña: <b style="color: red">superpass</b>
    </p>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>

</body>
</html>
