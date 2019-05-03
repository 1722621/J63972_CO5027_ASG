<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="WebApplication2.UploadImage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div>
            <asp:Image ID="CurrentImage" runat="server" />
        </div>
        <div>
            <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
