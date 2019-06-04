<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogInForm.aspx.cs" Inherits="DiabetikWeb.LogInForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Log In Screen</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <form>
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label for="Admin"><h1>ADMIN</h1></label>                       
                    </div>
                    <div class="form-group col-md-6">
                        <label for="User">
                            <h1>USER</h1>
                        </label>                      
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">                      
                        <label for="inputEmailAdmin">Username</label>
                        <input type="email" runat="server" class="form-control" id="inputEmailAdmin" placeholder="Email">
                    </div>
                    <div class="form-group col-md-6">

                        <label for="inputEmailUser">Username</label>
                        <input type="email" runat="server" class="form-control" id="inputEmailUser" placeholder="Email">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">

                        <label for="inputPasswordAdmin">Password</label>
                        <input type="password" runat="server" class="form-control" id="inputPasswordAdmin" placeholder="Password">
                    </div>
                    <div class="form-group col-md-6">

                        <label for="inputPasswordUser">Password</label>
                        <input type="password" runat="server" class="form-control" id="inputPasswordUser" placeholder="Password">
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                    </div>
                    <div class="form-group col-md-6">
                        <label for="UserRRegister">Not registered?<a href="www.test.com">Click HERE</a></label>                      
                    </div>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                       
                        <asp:Button Text="Sign In" runat="server" CssClass="btn btn-primary" ID="btnAdmin" OnClick="btnAdmin_Click"/>
                    </div>
                    <div class="form-group col-md-6">

                        <asp:Button Text="Sign In" runat="server" CssClass="btn btn-primary" ID="btnUSer" OnClick="btnUSer_Click" />
                    </div>
                </div>             
            </form>          
        </div>
    </form>
</body>
</html>
