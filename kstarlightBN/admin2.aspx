<%@ Page Title="" Language="C#" MasterPageFile="~/masterK.Master" AutoEventWireup="true" CodeBehind="admin2.aspx.cs" Inherits="kstarlightBN.admin2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <p>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert">
            <EditItemTemplate>
                Prod_ID:
                <asp:Label ID="Prod_IDLabel1" runat="server" Text='<%# Eval("Prod_ID") %>' />
                <br />
                ProdName:
                <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                <br />
                ProdDescription:
                <asp:TextBox ID="ProdDescriptionTextBox" runat="server" Text='<%# Bind("ProdDescription") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                ProdName:
                <asp:TextBox ID="ProdNameTextBox" runat="server" Text='<%# Bind("ProdName") %>' />
                <br />
                ProdDescription:
                <asp:TextBox ID="ProdDescriptionTextBox" runat="server" Text='<%# Bind("ProdDescription") %>' />
                <br />
                Quantity:
                <asp:TextBox ID="QuantityTextBox" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Prod_ID:
                <asp:Label ID="Prod_IDLabel" runat="server" Text='<%# Eval("Prod_ID") %>' />
                <br />
                ProdName:
                <asp:Label ID="ProdNameLabel" runat="server" Text='<%# Bind("ProdName") %>' />
                <br />
                ProdDescription:
                <asp:Label ID="ProdDescriptionLabel" runat="server" Text='<%# Bind("ProdDescription") %>' />
                <br />
                Quantity:
                <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                <br />
                Price:
                <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1624956_co5027_1624956_dbConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [Prod_ID] = @original_Prod_ID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDescription] = @original_ProdDescription) OR ([ProdDescription] IS NULL AND @original_ProdDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))" InsertCommand="INSERT INTO [Product] ([ProdName], [ProdDescription], [Quantity], [Price]) VALUES (@ProdName, @ProdDescription, @Quantity, @Price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProdName] = @ProdName, [ProdDescription] = @ProdDescription, [Quantity] = @Quantity, [Price] = @Price WHERE [Prod_ID] = @original_Prod_ID AND (([ProdName] = @original_ProdName) OR ([ProdName] IS NULL AND @original_ProdName IS NULL)) AND (([ProdDescription] = @original_ProdDescription) OR ([ProdDescription] IS NULL AND @original_ProdDescription IS NULL)) AND (([Quantity] = @original_Quantity) OR ([Quantity] IS NULL AND @original_Quantity IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL))">
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
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Prod_ID" HeaderText="Prod_ID" InsertVisible="False" ReadOnly="True" SortExpression="Prod_ID" />
                <asp:BoundField DataField="ProdName" HeaderText="ProdName" SortExpression="ProdName" />
                <asp:BoundField DataField="ProdDescription" HeaderText="ProdDescription" SortExpression="ProdDescription" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:HyperLinkField DataNavigateUrlFields="Prod_ID" DataNavigateUrlFormatString="uploadImage.aspx?id={0}" HeaderText="Upload" Text="Image" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>

</asp:Content>
