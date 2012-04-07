<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Connexon.Public.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="loginbox">
        <asp:Login ID="lgLogin" CssClass="login" runat="server">
        </asp:Login>
        <br />
        <asp:ValidationSummary ID="valLogin" runat="server" ValidationGroup="lgLogin" />
    </div>
</asp:Content>
