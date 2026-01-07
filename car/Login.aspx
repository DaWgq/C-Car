<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="carNews.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-box { max-width: 500px; margin: 80px auto; padding: 30px; border: 1px solid #ddd; border-radius: 10px; background-color: #fff; box-shadow: 0 0 10px rgba(0,0,0,0.1); }
        .form-group { margin-bottom: 20px; }
        .error-msg { color: red; font-size: 0.9em; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header class="masthead" style="background-image: url('images/banner1.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>会员登录</h1>
                        <span class="subheading">Welcome Back!</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="login-box">
            <h3 class="text-center mb-4">登录</h3>

            <div class="form-group">
                <label>用户名：</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="请输入用户名"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="请输入用户名" 
                    CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>密码：</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="请输入密码" 
                    CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group mt-4">
                <asp:Button ID="btnLogin" runat="server" Text="登录" CssClass="btn btn-primary w-100" OnClick="btnLogin_Click" />
            </div>
            
            <div class="text-center mt-3">
                 <asp:Label ID="lblMsg" runat="server" Text="" ForeColor="Red"></asp:Label>
            </div>
            <div class="text-center mt-2">
                <a href="Register.aspx">还没有账号？去注册</a>
            </div>
        </div>
    </div>
</asp:Content>