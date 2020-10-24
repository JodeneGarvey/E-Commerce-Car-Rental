<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="E_Commerce_Pet_Store.ShoppingCart"  EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>SHOPPING CART</h1>
    <br />
    <br />
    <asp:GridView CssClass="GridView" ID ="GVShoppingCart" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GVShoppingCart_RowCancelingEdit" OnRowDeleting="GVShoppingCart_RowDeleting" OnRowEditing="GVShoppingCart_RowEditing" OnRowUpdating="GVShoppingCart_RowUpdating" Width="1107px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
        <Columns>
            <asp:ImageField DataImageUrlField="ProductImage" HeaderText="Product Image" ReadOnly="True">
            </asp:ImageField>
            <asp:BoundField DataField="ProductID" HeaderText="Product ID" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="ProductName" HeaderText= "Product Name" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="ProductPrice" HeaderText="Product Price" ReadOnly="True"></asp:BoundField>
            <asp:BoundField DataField="Duration" HeaderText= "Number of Days" ReadOnly="False"></asp:BoundField>
            
            <asp:TemplateField HeaderText="Sub-Total">
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text= '<%# Double.Parse(Eval("ProductPrice").ToString())*Int32.Parse(Eval("Duration").ToString()) %>'></asp:Label>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="true" />
            <asp:CommandField ShowDeleteButton="true" DeleteText="Remove" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
    <br />
    <br />
    <asp:Label ID="lblGrandTotal" runat="server" Visible="false"></asp:Label>


</asp:Content>
