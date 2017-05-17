<%@ Page Title="" Language="C#" MasterPageFile="~/masterK.Master" AutoEventWireup="true" CodeBehind="collection.aspx.cs" Inherits="kstarlightBN.collection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="box">
        <asp:Repeater ID="itemsrpt" runat="server">

        <HeaderTemplate></HeaderTemplate>
        
        <ItemTemplate>
             <div class="item" id="product">
                <img src="../images/<%#Eval("Photo_ID") %><%#Eval("PhotoExtension") %>" alt="<%#Eval("PhotoAlternate") %>"/>
                    <div class="text">
                        <h4><%#Eval("PhotoName") %></h4>
                        <a class="morebutton" href="itemDetails.aspx?id=<%#Eval("Prod_ID") %>" title="Description">Desription</a>
                    </div>            
                </div>
         </ItemTemplate>
       
        <FooterTemplate></FooterTemplate>        
        </asp:Repeater>
     </div>
</asp:Content>
