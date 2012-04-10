<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Connexon.Public.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ProductID" DataSourceID="ObjectDataSource1" OnSelectedIndexChanging="GridView1_IndexChange">
            <Columns>
                <asp:ImageField>
                </asp:ImageField>
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Series" HeaderText="Series" 
                    SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:TemplateField>
                   <ItemTemplate>
                       <asp:Button ID ="cmdAddToCart" runat="server" Text="Add To Cart" CommandName="Select" />
                       </ItemTemplate>
                  </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetDataByID" 
            TypeName="ConnXTableAdapters.ProductsTableAdapter">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="0" Name="Pro" SessionField="ProdID" 
                    Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
