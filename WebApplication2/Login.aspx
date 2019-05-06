<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PS4 GAMES
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="topic">
        <h2>Sign In</h2>
    </div>
    <form class="form-horizontal" action=" " method="post" id="validation_form" runat="server">
        <fieldset>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">UserName</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                        <input name="username" placeholder="User Name" class="form-control" type="text">
                    </div>
                </div>
            </div>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">Password</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input name="password" placeholder="password" class="form-control" type="password" required />
                        <span class="glyphicon form-control-feedback"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
            </div>
            <div class="col-md-12 btnSend">
                <asp:Button ID="btnLogin" runat="server" Text="Login" ValidationGroup="register" OnClick="btnLogin_Click" Style="height: 26px" />
            </div>
            <div>
                <asp:Literal ID="litLoginError" runat="server"></asp:Literal>
            </div>
        </fieldset>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
