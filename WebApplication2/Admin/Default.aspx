<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2.Admin.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitlePlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadingPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ProductDataSource" ShowFooter="True">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton1" ValidationGroup="Edit" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                        &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?');"></asp:LinkButton>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:LinkButton ID="lbInster" ValidationGroup="Insert" OnClick="lbInsert_Click" runat="server">Insert</asp:LinkButton>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtName" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditName" ValidationGroup="Edit" runat="server"
                            ErrorMessage="Please enter the product's name" ControlToValidate="txtName" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="insertName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertName" ValidationGroup="Insert" runat="server"
                            ErrorMessage="Please enter the product's name" ControlToValidate="insertName" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Description" SortExpression="Description">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtDescription" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditDescription" ValidationGroup="Edit" runat="server"
                            ErrorMessage="Please enter the product's description" ControlToValidate="txtDescription" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="insertDescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertDescription" ValidationGroup="Insert" runat="server"
                            ErrorMessage="Please enter the product's description" ControlToValidate="insertDescription" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtQuantity" runat="server" Text='<%# Bind("Quantity") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditQuantity" ValidationGroup="Edit" runat="server"
                            ErrorMessage="Please enter the product's quantity" ControlToValidate="txtQuantity" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvEditQuantity" runat="server" ValidationGroup="Edit"
                            ErrorMessage="The quantity must be greater than or equal to zero" ControlToValidate="txtQuantity"
                            Text="*" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="1000">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="insertQuantity" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertQuantity" ValidationGroup="Insert" runat="server"
                            ErrorMessage="Please enter the product's quantity" ControlToValidate="insertQuantity" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvInsertQuantity" runat="server" ValidationGroup="Insert"
                            ErrorMessage="The quantity must be greater than or equal to zero" ControlToValidate="insertQuantity"
                            Text="*" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="1000">
                        </asp:RangeValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Price" SortExpression="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtPrice" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEditPrice" ValidationGroup="Edit" runat="server"
                            ErrorMessage="Please enter the product's price" ControlToValidate="txtPrice" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvEditPrice" runat="server" ValidationGroup="Edit"
                            ErrorMessage="The price must be greater than or equal to zero and cannot include the currency symbol as well as cents" ControlToValidate="txtPrice"
                            Text="*" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="1000">
                        </asp:RangeValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:TextBox ID="insertPrice" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvInsertPrice" ValidationGroup="Insert" runat="server"
                            ErrorMessage="Please enter the product's price" ControlToValidate="insertPrice" Text="*" ForeColor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="rvInsertPrice" runat="server" ValidationGroup="Insert"
                            ErrorMessage="The price must be greater than or equal to zero and cannot include the currency symbol as well as cents" ControlToValidate="insertPrice"
                            Text="*" ForeColor="Red" Type="Integer" MinimumValue="0" MaximumValue="1000">
                        </asp:RangeValidator>
                    </FooterTemplate>
                </asp:TemplateField>
                <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="UploadImage.aspx?id={0}" InsertVisible="False" Text="Set Image" />
            </Columns>
        </asp:GridView>
        <asp:ValidationSummary ValidationGroup="Edit" ID="ValidationSummary1" ForeColor="Red" runat="server" />
        <asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary2" ForeColor="Red" runat="server" />
        <asp:SqlDataSource ID="ProductDataSource" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Table] WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Description] = @original_Description AND [Quantity] = @original_Quantity AND [Price] = @original_Price" InsertCommand="INSERT INTO [Table] ([Name], [Description], [Quantity], [Price]) VALUES (@Name, @Description, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Table]" UpdateCommand="UPDATE [Table] SET [Name] = @Name, [Description] = @Description, [Quantity] = @Quantity, [Price] = @Price WHERE [Id] = @original_Id AND [Name] = @original_Name AND [Description] = @original_Description AND [Quantity] = @original_Quantity AND [Price] = @original_Price">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_Name" Type="String" />
                <asp:Parameter Name="original_Description" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MapPlaceHolder" runat="server">
</asp:Content>
