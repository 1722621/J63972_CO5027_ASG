<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CompletePurchase.aspx.cs" Inherits="WebApplication2.CompletePurchase" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Complete Your Purchase</h2>
    <asp:Button ID="btnConfirmPurchase" runat="server" Text="Confirm" OnClick="btnConfirmPurchase_Click" />
    <asp:Literal ID="litInformation" runat="server"></asp:Literal>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
