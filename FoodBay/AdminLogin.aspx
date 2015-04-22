<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="FoodBay.AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="CSS/Login.css" />
    <div class="logincontainer">
        <div id="login">
            <h1>Admin Area</h1>
            <br />
            <asp:TextBox ID="txtUsername" runat="server" Text="Username"></asp:TextBox>
            <asp:TextBox ID="txtPwd" runat="server" TextMode="Password" Text="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ErrorMessage="Please enter Password" ControlToValidate="txtPwd" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
        <!-- end login -->
    </div>
</asp:Content>
