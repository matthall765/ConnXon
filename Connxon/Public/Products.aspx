﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Connexon.Public.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="gridProducts" CssClass="itembox" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="ProductID" DataSourceID="ObjectDataSource1" 
            ForeColor="Black" GridLines="Vertical" BackColor="White" 
            BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
            <AlternatingRowStyle BackColor="#2E2EA6"/>
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:ImageField DataImageUrlField="Image_Small">
                </asp:ImageField>
                <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                <asp:BoundField DataField="Series" HeaderText="Series" 
                    SortExpression="Series" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#777777" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#111111" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#3B53D9" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            DeleteMethod="Delete" InsertMethod="Insert" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="DataTableAdapters.ProductsTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_ProductID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProductID" Type="Int32" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Image_Small" Type="String" />
                <asp:Parameter Name="Image_Large" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Series" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Description" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Image_Small" Type="String" />
                <asp:Parameter Name="Image_Large" Type="String" />
                <asp:Parameter Name="Brand" Type="String" />
                <asp:Parameter Name="Series" Type="String" />
                <asp:Parameter Name="Model" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Original_ProductID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
