<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication2.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
    Index Page
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PS4 GAMES
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="col-xs-9 col-sm-9 col-md-9">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ProductDataSource" OnItemDataBound="Repeater1_ItemDataBound">
            <HeaderTemplate>
                <ul>
            </HeaderTemplate>

            <ItemTemplate>
                <div class="col-xs-12 col-sm-6 col-md-4 ps4-item">
                    <li class="list-group-item">
                        <a href="<%# Eval("Id", "Product.aspx?Id={0}") %>">
                            <img class="img-responsive ps4-images" src="images/<%#Eval("ImagePath") %>" alt="Product Id<%#Eval("Id") %> image">
                            <div class="ps4-title">
                                <%#Eval("Name") %>
                            </div>
                            <div class="ps4-price">
                                $<%#Eval("Price") %>
                            </div>
                            <div class="ps4-quantity">
                                Stock:
                                <asp:Label ID="lblQuantity" runat="server" Text='<%#Eval("Quantity") %>'></asp:Label>
                            </div>
                        </a>
                        <button class="sc-add-to-cart btnBuy" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">BUY</button>
                    </li>
                </div>
            </ItemTemplate>

            <FooterTemplate></ul></FooterTemplate>

        </asp:Repeater>
    </div>
    <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]"></asp:SqlDataSource>

    <div class="col-xs-3 col-sm-3 col-md-3">
        <div id="cart"></div>
    </div>

    <%--<script src="Scripts/jQuery.SimpleCart.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#cart').simpleCart({
                addtoCartClass: '.sc-add-to-cart',
                cartProductListClass: '.cart-products-list',
                totalCartCountClass: '.total-cart-count',
                totalCartCostClass: '.total-cart-cost',
                showcartID: '#show-cart',
                itemCountClass: '.item-count'
            });
        });
    </script>--%>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
