<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Car.aspx.cs" Inherits="E_Commerce_Pet_Store.Car" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="d1" runat="server" >
        <HeaderTemplate>
            <section>
                <img src="Images/carbanner2.jpg" class="img-fluid w-100"/>
            </section>
        </HeaderTemplate>
       
        <ItemTemplate>
            <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px; width:1300px">
            <div class="img-thumbnail product-item" style="height:400px; width:500px">
              <img src="<%#Eval("ProductImage") %>" style="height:200px; width:250px"/>
                    
                  <div class="caption">
                    <h6><%#Eval("ProductID") %></h6>
                    <h5><%#Eval("ProductName") %></h5>
                    Price:
                    <p>$<%#Eval("ProductPrice") %></p>
                   </div> 
                </div> 
                <br />
                <a href="Product_Display.aspx?id=<%#Eval("id") %>"><asp:Button class="btn btn-info btn-block btn-sm" ID="Button1" runat="server" Text="Details" /></a>
               </div>
        </ItemTemplate>
      
    </asp:Repeater>
   
</asp:Content>
