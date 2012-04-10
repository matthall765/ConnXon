<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Connexon.Public.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" ShowHeaderWhenEmpty="True">
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Order Shit" 
            onclick="Button1_Click" />

    </div>
</asp:Content>
