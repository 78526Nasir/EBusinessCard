﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="EBusinessCard.AdminUI.AdminLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <meta charset="utf-8" />

    <link href="../Untracked/fontawesome-all.min.css" rel="stylesheet" />
    <link href="../css/font-style.css" rel="stylesheet" />
    <link href="../css/AdminLogin.css" rel="stylesheet" />
</head>
<body>

    <div class="container">
        <!-- Login text header -->
        <div class="top">
            <h1 class="title">Admin Login</h1>
        </div>

        <form id="form1" runat="server">
            <!-- User name field and it's validator -->
            <span class="fa fa-user relative"></span>
            <asp:TextBox ID="txtUsername" placeholder="Enter username" CssClass="text-field first" runat="server" onblur="usernameValidation()"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtUsername" ErrorMessage="Username required">&nbsp;</asp:RequiredFieldValidator>
            <span id="unAlert" class="alert-1">&#9888;</span>
            <br />

            <!-- Password field, it's validator and forget password link -->
            <span class="fa fa-lock relative"></span>
            <asp:TextBox ID="txtPassword" placeholder="Enter password" TextMode="Password" CssClass="text-field" runat="server" onblur="passwordValidation()"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtPassword" ErrorMessage="Password required">&nbsp;</asp:RequiredFieldValidator>
            <span id="pAlert" class="alert-2">&#9888;</span>

            <p>Forget <a href="ForgetPasswordRedirect.aspx" target="_blank">password?</a></p>
            <br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn-login" OnClick="btnLogin_Click" />
            <br />
            <asp:Label ID="status" runat="server" CssClass="status-report"></asp:Label>
            <br />

            <!-- Validation summary control -->
            <div class="validation-summary">
                <asp:ValidationSummary ID="vs" runat="server" />
            </div>
        </form>
    </div>


    <script src="../Untracked/jQuery3.3.1.min.js"></script>
    <script src="../Untracked/fontawesome-all.min.js"></script>
</body>
</html>
