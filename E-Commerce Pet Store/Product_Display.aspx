<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Product_Display.aspx.cs" EnableEventValidation="false" Inherits="E_Commerce_Pet_Store.Product_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:DataList ID="dlProduct" runat="server" RepeatColumns="1">
        <ItemTemplate>
            <div class="container">
           <div class="row">
                <div class="col-md-6 mx-auto">
                      <div style = "height:300px; width:600px; border-style:solid; border-width:1px;" >

                         <div style="height:300px; width:200px; float:left; border-style:solid; border-width:1px;" >
                            <img src = '<%#Eval("ProductImage") %>' height="300" width="200" />
                          </div>
                        <div style = "height:300px; width:395px; float:left; border-style:solid; border-width:1px; " >
                            <h4><%#Eval("ProductID") %></h4> <br />
                            <hr/>
                            <h5><%#Eval("ProductName") %></h5> <br />
                            <hr/>
                            <h6><%#Eval("ProductDesc") %> <br /></h6>
                            <h6>$<%#Eval("ProductPrice") %></h6><br /><hr />
                        </div>
                          
                     </div>
                    </div>
               </div>
                <center>
                <h3>Please Select Date Range for Rental</h3>
                    <asp:TextBox ID="Pickupdate" runat="server" TextMode="Date"></asp:TextBox>
                    <asp:TextBox ID="Returndate" runat="server" TextMode="Date"></asp:TextBox><br />
                <asp:Button ID="B1Add" runat="server" Text="Rent" OnClick="B1Add_Click" CausesValidation="False" UseSubmitBehavior="false"/>
                </center>
                
           </div>
        </ItemTemplate>
    </asp:DataList>
    <br />
    <br />

</asp:Content>
