<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Connexon.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryID" 
            DataSourceID="Category">
            <ItemTemplate>
                Category:
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                Image:
                <asp:Image ID="ImageLabel" runat="server" ToolTip='<%# Eval("ToolTip") %>' ImageUrl='<%# Eval("Image") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:ObjectDataSource ID="Category" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" 
            TypeName="Connexon.App_Code.DataTableAdapters.CategoriesTableAdapter" 
            UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_CategoryID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="ToolTip" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Image" Type="String" />
                <asp:Parameter Name="ToolTip" Type="String" />
                <asp:Parameter Name="Original_CategoryID" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
 </asp:Content>