<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Connexon.Public.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="grdProducts" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductID" DataSourceID="ObjectDataSource1" OnSelectedIndexChanging="grdProducts_IndexChange">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Eval("Image_Small") %>' CommandName="Select" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Series" HeaderText="Series" 
                    SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetProductsDataCategory" 
            TypeName="ConnXTableAdapters.ProductsTableAdapter">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="*" Name="ClickedItem" 
                    SessionField="SelectedCategory" Type="String" />
                <asp:QueryStringParameter DefaultValue="*" Name="HtmlClick" 
                    QueryStringField="Cat" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
        <asp:Label ID="Label1" runat="server" Text="Label" BackColor="Aqua"></asp:Label>
</asp:Content>
