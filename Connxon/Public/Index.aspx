<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Connexon.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        
        <asp:DataList ID="dlsCategory" runat="server"  DataSourceID="CategoryData" 
            RepeatColumns="4" RepeatDirection="Vertical" 
             DataKeyField="Category" OnSelectedIndexChanged="dlsCategory_SelectedIndexChange">
            <ItemTemplate>
                <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
                <br />
                <asp:ImageButton runat="server" CommandName="Select" ImageUrl='<%# Eval("Image") %>'/>
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <asp:ObjectDataSource ID="CategoryData" runat="server" DeleteMethod="Delete" 
            InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
            SelectMethod="GetData" TypeName="ConnXTableAdapters.CategoriesTableAdapter" 
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