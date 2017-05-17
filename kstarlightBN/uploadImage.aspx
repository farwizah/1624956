<%@ Page Title="" Language="C#" MasterPageFile="~/masterK.Master" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="kstarlightBN.uploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>&nbsp;</p>
<p>&nbsp;</p>
<p>Upload Image</p>
<p>
    <asp:FileUpload ID="FileUpload1" runat="server" />
</p>
<p>Alternate Text</p>
<asp:TextBox ID="AlternateText" runat="server"></asp:TextBox>
<p>
    <asp:Button ID="Confirm" runat="server" OnClick="Confirm_Click" Text="Confirm" />
</p>


    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Photo_ID" DataSourceID="SqlDataSource2" Width="682px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Photo_ID" HeaderText="Photo_ID" InsertVisible="False" ReadOnly="True" SortExpression="Photo_ID" />
                <asp:BoundField DataField="PhotoName" HeaderText="PhotoName" SortExpression="PhotoName" />
                <asp:BoundField DataField="PhotoWidth" HeaderText="PhotoWidth" SortExpression="PhotoWidth" />
                <asp:BoundField DataField="PhotoHeight" HeaderText="PhotoHeight" SortExpression="PhotoHeight" />
                <asp:BoundField DataField="PhotoExtension" HeaderText="PhotoExtension" SortExpression="PhotoExtension" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" DeleteCommand="DELETE FROM [Photo] WHERE [Photo_ID] = @original_Photo_ID AND (([PhotoName] = @original_PhotoName) OR ([PhotoName] IS NULL AND @original_PhotoName IS NULL)) AND (([PhotoWidth] = @original_PhotoWidth) OR ([PhotoWidth] IS NULL AND @original_PhotoWidth IS NULL)) AND (([PhotoHeight] = @original_PhotoHeight) OR ([PhotoHeight] IS NULL AND @original_PhotoHeight IS NULL)) AND (([PhotoExtension] = @original_PhotoExtension) OR ([PhotoExtension] IS NULL AND @original_PhotoExtension IS NULL))" InsertCommand="INSERT INTO [Photo] ([PhotoName], [PhotoWidth], [PhotoHeight], [PhotoExtension]) VALUES (@PhotoName, @PhotoWidth, @PhotoHeight, @PhotoExtension)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Photo]" UpdateCommand="UPDATE [Photo] SET [PhotoName] = @PhotoName, [PhotoWidth] = @PhotoWidth, [PhotoHeight] = @PhotoHeight, [PhotoExtension] = @PhotoExtension WHERE [Photo_ID] = @original_Photo_ID AND (([PhotoName] = @original_PhotoName) OR ([PhotoName] IS NULL AND @original_PhotoName IS NULL)) AND (([PhotoWidth] = @original_PhotoWidth) OR ([PhotoWidth] IS NULL AND @original_PhotoWidth IS NULL)) AND (([PhotoHeight] = @original_PhotoHeight) OR ([PhotoHeight] IS NULL AND @original_PhotoHeight IS NULL)) AND (([PhotoExtension] = @original_PhotoExtension) OR ([PhotoExtension] IS NULL AND @original_PhotoExtension IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Photo_ID" Type="Int32" />
                <asp:Parameter Name="original_PhotoName" Type="String" />
                <asp:Parameter Name="original_PhotoWidth" Type="Int32" />
                <asp:Parameter Name="original_PhotoHeight" Type="Int32" />
                <asp:Parameter Name="original_PhotoExtension" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="PhotoName" Type="String" />
                <asp:Parameter Name="PhotoWidth" Type="Int32" />
                <asp:Parameter Name="PhotoHeight" Type="Int32" />
                <asp:Parameter Name="PhotoExtension" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="PhotoName" Type="String" />
                <asp:Parameter Name="PhotoWidth" Type="Int32" />
                <asp:Parameter Name="PhotoHeight" Type="Int32" />
                <asp:Parameter Name="PhotoExtension" Type="String" />
                <asp:Parameter Name="original_Photo_ID" Type="Int32" />
                <asp:Parameter Name="original_PhotoName" Type="String" />
                <asp:Parameter Name="original_PhotoWidth" Type="Int32" />
                <asp:Parameter Name="original_PhotoHeight" Type="Int32" />
                <asp:Parameter Name="original_PhotoExtension" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Button ID="refresh" runat="server" OnClick="refresh_Click" Text="Refresh" />
    </p>
</asp:Content>
