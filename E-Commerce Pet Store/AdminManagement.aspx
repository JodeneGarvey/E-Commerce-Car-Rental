<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminManagement.aspx.cs" EnableEventValidation="false" Inherits="E_Commerce_Pet_Store.AdminManagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="button" PostBackUrl="~/AddProducts.aspx">Add New Product</asp:LinkButton>
<br />
<asp:GridView ID="grdProducts" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="sdsProducts" Width="100%" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowEditing="grdProducts_RowEditing">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
        <asp:BoundField DataField="ProductID" HeaderText="ProductID" SortExpression="ProductID" />
        <asp:BoundField DataField="ProductName" HeaderText="ProductName" SortExpression="ProductName" />
        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
        <asp:BoundField DataField="ProductDesc" HeaderText="ProductDesc" SortExpression="ProductDesc" />
        <asp:BoundField DataField="ProductPrice" HeaderText="ProductPrice" SortExpression="ProductPrice" />
        <asp:BoundField DataField="ProductImage" HeaderText="ProductImage" SortExpression="ProductImage" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:QuickCarConnectionString %>" DeleteCommand="DELETE FROM [Product] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Product] ([ProductID], [ProductName], [CategoryID], [ProductDesc], [ProductPrice], [ProductImage]) VALUES (@ProductID, @ProductName, @CategoryID, @ProductDesc, @ProductPrice, @ProductImage)" SelectCommand="SELECT * FROM [Product]" UpdateCommand="UPDATE [Product] SET [ProductID] = @ProductID, [ProductName] = @ProductName, [CategoryID] = @CategoryID, [ProductDesc] = @ProductDesc, [ProductPrice] = @ProductPrice, [ProductImage] = @ProductImage WHERE [ID] = @ID">
    <DeleteParameters>
        <asp:Parameter Name="ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ProductID" Type="String" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="ProductDesc" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Double" />
        <asp:Parameter Name="ProductImage" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="ProductID" Type="String" />
        <asp:Parameter Name="ProductName" Type="String" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="ProductDesc" Type="String" />
        <asp:Parameter Name="ProductPrice" Type="Double" />
        <asp:Parameter Name="ProductImage" Type="String" />
        <asp:Parameter Name="ID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<asp:LinkButton ID="gedProductCategories" runat="server" CssClass="button" PostBackUrl="~/AddCategory.aspx">Add New Product Category</asp:LinkButton>
<br />
<br />
<asp:GridView ID="grdProducts0" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CategoryID" DataSourceID="sdsProductCategory" Width="50%" CellPadding="4" ForeColor="#333333" GridLines="None">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" ReadOnly="True" SortExpression="CategoryID" />
        <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
<asp:SqlDataSource ID="sdsProductCategory" runat="server" ConnectionString="<%$ ConnectionStrings:QuickCarConnectionString %>" DeleteCommand="DELETE FROM [ProductCategories] WHERE [CategoryID] = @CategoryID" InsertCommand="INSERT INTO [ProductCategories] ([CategoryID], [CategoryName]) VALUES (@CategoryID, @CategoryName)" SelectCommand="SELECT * FROM [ProductCategories]" UpdateCommand="UPDATE [ProductCategories] SET [CategoryName] = @CategoryName WHERE [CategoryID] = @CategoryID">
    <DeleteParameters>
        <asp:Parameter Name="CategoryID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CategoryID" Type="Int32" />
        <asp:Parameter Name="CategoryName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CategoryName" Type="String" />
        <asp:Parameter Name="CategoryID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />
</asp:Content>
