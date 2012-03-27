<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Connexon.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <span style="background-color: #FFF8DC;">Category:
            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="background-color: #008A8C;color: #FFFFFF;">Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" 
                Text='<%# Bind("Category") %>' />
            <br />
            Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">Category:
            <asp:TextBox ID="CategoryTextBox" runat="server" 
                Text='<%# Bind("Category") %>' />
            <br />Image:
            <asp:TextBox ID="ImageTextBox" runat="server" Text='<%# Bind("Image") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="background-color: #DCDCDC;color: #000000;">Category:
            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
            <br />
            Image:
            <asp:Image ID="ImageLabel" runat="server" ImageUrl='<%# Eval("Image") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" 
                style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
            Category:
            <asp:Label ID="CategoryLabel" runat="server" Text='<%# Eval("Category") %>' />
            <br />
            Image:
            <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnXConnectionString %>" 
        SelectCommand="SELECT [Category], [Image] FROM [Category]">
    </asp:SqlDataSource>
</asp:Content>
