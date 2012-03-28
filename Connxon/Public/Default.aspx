<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Connexon.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class ="category">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="CategoryID" DataSourceID="Category" RepeatColumns="2" RepeatDirection="Horizontal"> 
            <ItemTemplate>
                <div class="itembox">
                    <asp:Image ID="ImageLabel" CssClass="img" runat="server" ImageUrl='<%# Eval("Image") %>' />
                    <br />
                    <asp:Label ID="CategoryLabel" CssClass="itemtext" runat="server" Text='<%# Eval("Category") %>' />
                    <br />
                </div>
            </ItemTemplate>
        </asp:DataList>
        </div>
            <asp:ObjectDataSource ID="Category" runat="server" DeleteMethod="Delete" 
                InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                SelectMethod="GetCatData" 
                TypeName="Connexon.App_Code.ConnXTableAdapters.CategoryTableAdapter" 
                UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_CategoryID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Category" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="Original_CategoryID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
    </asp:Content>
