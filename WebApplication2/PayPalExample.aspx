<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PayPalExample.aspx.cs" Inherits="WebApplication2.PayPalExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Purchase past exam questions</h2>
            <asp:Label ID="lblQuantity" runat="server" Text="Quantity at £10 each" AssociatedControlID="ddlExamQuantity"></asp:Label>
            <asp:DropDownList ID="ddlExamQuantity" runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            <p>Postage and packaging charges of £3.95 will be applied to your order</p>
            <asp:Button ID="btnPurchaseExamQuestions" runat="server" Text="Buy Now" OnClick="btnPurchaseExamQuestions_Click" />
        </div>
    </form>
</body>
</html>
