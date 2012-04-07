<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Connexon.Public.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductID" DataSourceID="ObjectDataSource1">
            <Columns>
                <asp:BoundField DataField="ProductID" HeaderText="ProductID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="ProductID" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
                <asp:BoundField DataField="Image_Small" HeaderText="Image_Small" 
                    SortExpression="Image_Small" />
                <asp:BoundField DataField="Image_Large" HeaderText="Image_Large" 
                    SortExpression="Image_Large" />
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Series" HeaderText="Series" 
                    SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>

        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetProducts" 
            TypeName="ConnXTableAdapters.ProductsTableAdapter"></asp:ObjectDataSource>
    </div>
</asp:Content>
