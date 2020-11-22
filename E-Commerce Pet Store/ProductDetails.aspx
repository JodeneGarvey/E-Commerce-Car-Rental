<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="E_Commerce_Pet_Store.ProductDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
        .auto-style1 {
            width: 284px;
        }
        .auto-style2 {
            width: 89%
        }
    </style>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" Height="293px" Width="310px" OnItemCommand="DataList1_ItemCommand">
        <ItemTemplate>
           
           <div style="height:600px; width:1105px; border-style:solid; border-width:1px;">
               <div style="height:300px; float:left;border-style:solid; border-width:1px;">
                   <img src="<%#Eval("ProductImage") %>" height="600" width="200" />
               </div>
               <div style="height:600px; width:900px; float:left; border-style:solid; border-width:1px; text-align:center;">
                   <h4 style="background-color:aquamarine;"><%#Eval("ProductID") %></h4>
                   <h5><%#Eval("ProductName") %></h5><br />
                   <h6><%#Eval("ProductDesc") %></h6><br />
                   <h5>$<%#Eval("ProductPrice") %></h5>
                   <hr />
                   <h5>Select Rental Days</h5><br />
                   <asp:TextBox ID="TxtPickup" runat="server" TextMode="Date"></asp:TextBox>
                   <asp:TextBox ID="TxtReturn" runat="server" TextMode="Date"></asp:TextBox><br />
                   <br />
                   <asp:Button ID="Cart" runat="server" Text="Add To Cart" CommandArgument='<%#Eval("ID") %>' CommandName="AddToCart" />
               </div>

           </div>
           
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickCarConnectionString %>" SelectCommand="SELECT * FROM [Product] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
