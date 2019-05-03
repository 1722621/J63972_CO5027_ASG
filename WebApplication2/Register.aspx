<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebApplication2.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PS4 GAMES
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Register</h2>
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
                <label class="col-md-3 control-label">E-Mail</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                        <input name="email" placeholder="E-Mail Address" class="form-control" type="text">
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
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">Confirm Password</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                        <input name="confirmPassword" placeholder="Confirm password" class="form-control {$borderColor}" type="password" data-match="#confirmPassword" required />
                        <span class="glyphicon form-control-feedback"></span>
                        <span class="help-block with-errors"></span>
                    </div>
                </div>
            </div>
            <div class="form-group has-feedback">
                <label class="col-md-3 control-label">Date of Birth</label>
                <div class="col-md-6  inputGroupContainer">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                        <input name="dateOfBirth" placeholder="DD/MM/YYYY" class="form-control" type="text" data-by-date="true" />
                    </div>
                </div>
            </div>
            <div class="col-md-12 btnSend">
                <asp:Button ID="btnRegister" runat="server" Text="Register" ValidationGroup="register" OnClick="btnRegister_Click" Style="height: 26px" />
            </div>
            <asp:Literal ID="litRegisterError" runat="server"></asp:Literal>
        </fieldset>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
