<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="E_Commerce_Pet_Store.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section>
      <img src="Images/carbanner2.jpg" class="img-fluid w-100"/>
   </section>
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand1">
        <ItemTemplate>
           <table>
               <tr>
                   <td style=" text-align:center; background-color:aquamarine">
                       <asp:Label ID="Label1" runat="server" Text='<%#Eval("ProductID") %>' Font-Bold="true" ForeColor="White" ></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td style=" text-align:center">
                       <asp:Image ID="Image1" runat="server" BorderColor="#5F98F3" BorderWidth="1px" Height="279px" Width="278" ImageUrl='<%#Eval("ProductImage") %>' />
                   </td>
               </tr>
               <tr>
                   <td style=" text-align:center; background-color:aquamarine">
                       <asp:Label ID="Label2" runat="server" Text='<%#Eval("ProductName") %>' ></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td style=" text-align:center; background-color:aquamarine">
                       <asp:Label ID="Label3" runat="server" Text='<%#Eval("ProductPrice") %>'></asp:Label>
                   </td>
               </tr>
               <tr>
                   <td>
                       <asp:Button ID="Button1" class="btn btn-info btn-block btn-sm" runat="server" Text="Details" CommandName="ProductDetails" CommandArgument='<%#Eval("ID") %>' />
                   </td>
               </tr>
           </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickCarConnectionString %>" SelectCommand="SELECT [ID], [ProductID], [ProductName], [ProductPrice], [ProductImage] FROM [Product] WHERE ([CategoryID] = @CategoryID)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="1" Name="CategoryID" QueryStringField="1" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
   
</asp:Content>
