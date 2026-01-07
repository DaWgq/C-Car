<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="carNews.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-box { max-width: 500px; margin: 50px auto; padding: 30px; border: 1px solid #ddd; border-radius: 10px; background-color: #fff; }
        .form-group { margin-bottom: 15px; }
        .error-msg { color: red; font-size: 0.9em; display: block; margin-top: 5px; }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <header class="masthead" style="background-image: url('images/banner2.jpg')">
        <div class="container position-relative px-4 px-lg-5">
            <div class="row gx-4 gx-lg-5 justify-content-center">
                <div class="col-md-10 col-lg-8 col-xl-7">
                    <div class="site-heading">
                        <h1>加入我们要</h1>
                        <span class="subheading">注册成为会员，获取最新资讯</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="login-box">
            <h3 class="text-center mb-4">用户注册</h3>

            <div class="form-group">
                <label>用户名：</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="请输入用户名"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUser" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="用户名不能为空！" 
                    CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>密码：</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="请输入密码"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPass" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="密码不能为空！" 
                    CssClass="error-msg" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>确认密码：</label>
                <asp:TextBox ID="txtConfirm" runat="server" CssClass="form-control" TextMode="Password" placeholder="请再次输入密码"></asp:TextBox>
                <asp:CompareValidator ID="cvPass" runat="server" 
                    ControlToValidate="txtConfirm" 
                    ControlToCompare="txtPassword" 
                    ErrorMessage="两次输入的密码不一致！" 
                    CssClass="error-msg" Display="Dynamic"></asp:CompareValidator>
            </div>

            <div class="form-group text-center mt-4">
                <asp:Button ID="btnRegister" runat="server" Text="立即注册" CssClass="btn btn-primary w-100" OnClick="btnRegister_Click" />
            </div>

            <div class="text-center mt-3">
                <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>