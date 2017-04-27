<%@ Page Title="" Language="C#" MasterPageFile="masterK.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="kstarlightBN.login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="index.css" rel="stylesheet" type="text/css" media="screen" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         
    <p>&nbsp;</p>
<p>&nbsp;</p>
<p>Login</p>
    <p>&nbsp;Username:</p>
    <p>
        <asp:TextBox ID="TxtUsername" runat="server" Width="300px"></asp:TextBox>
    </p>

<p>Password:</p>
    <p>
        <asp:TextBox ID="TxtPassword" runat="server" Width="300px"></asp:TextBox>
    </p>

<p><asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /></p>

    <asp:Literal ID="LoginError" runat="server"></asp:Literal>

    <p>Registration</p>

    <p>Fullname:</p>
    <p>
        <asp:TextBox ID="TxtFullname" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>Email:</p>
    <p>
        <asp:TextBox ID="TxtEmail" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>Password:</p>
    <p>
        <asp:TextBox ID="TxtPswd" runat="server" Width="300px"></asp:TextBox>
    </p>

    <p>Confirm Password:</p>
    <p>
        <asp:TextBox ID="TxtCnfmPswd" runat="server" Width="300px"></asp:TextBox>
    </p>
   
    <asp:Button ID="Button2" runat="server" Text="Register" OnClick="Button2_Click" />

    <br />
    <br />
    <asp:Literal ID="RegisterError" runat="server"></asp:Literal>

    </asp:Content>