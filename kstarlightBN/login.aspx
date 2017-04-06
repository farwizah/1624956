<%@ Page Title="" Language="C#" MasterPageFile="./masterK.Master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="kstarlightBN.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
<p>
        Username:
    </p>
    <p>
        <asp:TextBox ID="TxtUsername" runat="server" Width="300px"></asp:TextBox>
    </p>
    <p>
        Password:</p>
    <p>
        <asp:TextBox ID="TxtPassword" runat="server" Width="300px"></asp:TextBox>
    </p>
<p>
        &nbsp;</p>
<p>
        <asp:Button ID="Button1" runat="server" Text="Login" />
    </p>
   
    </asp:Content>