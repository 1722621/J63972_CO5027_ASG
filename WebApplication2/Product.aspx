<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="WebApplication2.Product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
    PS4 GAMES
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <div class="container product">
            <div class="col-md-3">
                <asp:Image ID="CurrentImage" runat="server" />
            </div>
            <div class="col-md-6">
                <asp:FormView ID="FormView1" runat="server" DataSourceID="ProductDataSource">
                    <EditItemTemplate>
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        Name:
                        <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                        <br />
                        Quantity:
                        <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                        <br />
                        Description:
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                        <br />
                        Price:
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <div class="product-name">
                            <strong>Name:</strong>
                            <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' />
                        </div>
                        <div class="product-description">
                            <strong>Description:</strong>
                            <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Bind("Description") %>' />
                        </div>
                        <div class="product-quantity">
                            <strong>Quantity:</strong>
                            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                        </div>
                        <div class="product-price">
                            <strong>Price:</strong> $
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                        </div>
                        <button class="sc-add-to-cart btnBuy1" data-name="<%#Eval("Name") %>" data-price="<%#Eval("Price") %>" type="submit">BUY</button>
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="ProductDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" SelectCommand="SELECT [Name], [Quantity], [Description], [Price] FROM [Table] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="col-xs-3 col-sm-3 col-md-3">
                <div id="cart"></div>
            </div>
        </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
