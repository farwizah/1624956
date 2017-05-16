<%@ Page Title="" Language="C#" MasterPageFile="masterK.Master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="kstarlightBN.admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    
    <p>PRODUCT DETAILS</p>

    <p>Product ID:</p>
    <p><asp:TextBox ID="TextBox1" runat="server" Width="101px"></asp:TextBox></p>

    <p>Product Name</p>
    <p><asp:TextBox ID="TextBox2" runat="server" Width="208px"></asp:TextBox></p>

    <p>Product Description</p>
    <p><asp:TextBox ID="TextBox3" runat="server" Height="78px" Width="206px"></asp:TextBox></p>

    <p>Quantity</p>
    <p><asp:TextBox ID="TextBox4" runat="server" Width="30px"></asp:TextBox></p>

    <p>Price</p>
    <p><asp:TextBox ID="TextBox5" runat="server" Width="54px"></asp:TextBox></p>
<p>
    <asp:Button ID="Button1" runat="server" Text="Button" />
</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" InsertVisible="False" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="ProdDescription" HeaderText="ProdDescription" SortExpression="ProdDescription" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Prod_ID] = @original_Prod_ID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDescription] = @original_ProdDescription) OR ([ProdDescription] IS NULL AND @original_ProdDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Product] ([ProdName], [ProdDescription], [Quantity], [Price]) VALUES (@ProdName, @ProdDescription, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = @ProdName, [ProdDescription] = @ProdDescription, [Quantity] = @Quantity, [Price] = @Price WHERE [Prod_ID] = @original_Prod_ID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDescription] = @original_ProdDescription) OR ([ProdDescription] IS NULL AND @original_ProdDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Prod_ID" Type="Int32" />
                <asp:Parameter Name="original_ProdName" Type="String" />
                <asp:Parameter Name="original_ProdDescription" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="ProdName" Type="String" />
                <asp:Parameter Name="ProdDescription" Type="String" />
                <asp:Parameter Name="Quantity" Type="Int32" />
                <asp:Parameter Name="Price" Type="Int32" />
                <asp:Parameter Name="original_Prod_ID" Type="Int32" />
                <asp:Parameter Name="original_ProdName" Type="String" />
                <asp:Parameter Name="original_ProdDescription" Type="String" />
                <asp:Parameter Name="original_Quantity" Type="Int32" />
                <asp:Parameter Name="original_Price" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>
