<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="WebApplication2.UploadImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div>
            <asp:Image CssClass="img-responsive upload-image" ID="CurrentImage" runat="server" />
        </div>
        <div class="upload-file">
            <asp:FileUpload ID="imageFileUploadControl" runat="server" />
            <asp:RequiredFieldValidator ID="RequiredFieldValidatorImage" ValidationGroup="Upload" CssClass ="text-danger" runat="server" ErrorMessage="Please insert product's image" Text="*" ControlToValidate="imageFileUploadControl"></asp:RequiredFieldValidator>
        </div>
        <div class="btnUpload">
            <asp:Button ID="btnUpload" ValidationGroup="Upload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
        </div>
        <div class="upload-label">
        <asp:ValidationSummary ValidationGroup="Upload" ID="ValidationSummary1" ForeColor="Red" runat="server" />
        
        <asp:Label ID="lblUpload" runat="server"></asp:Label>
            </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
