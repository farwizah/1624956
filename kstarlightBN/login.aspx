<%@ Page Title="" Language="C#" MasterPageFile="~/masterK.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kstarlightBN.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="login.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
          
<p>
 &nbsp;
</p>

    <p>
        <br />
    </p>
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
        <asp:Button ID="Button1" runat="server" Text="Login" Width="103px" Height="28px" Font-Names="Comic Sans" style="margin-bottom: 0px" />
    </p>

