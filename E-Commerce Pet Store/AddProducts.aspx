<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddProducts.aspx.cs" Inherits="E_Commerce_Pet_Store.AddProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>ADD Product</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Product ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="t1" runat="server"></asp:TextBox>
                                </div>

                                <label>Product Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="t2" runat="server"></asp:TextBox>
                                </div>

                                 <label>Product Price</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="t3" runat="server"></asp:TextBox>
                                </div>

                                <label>Product Category</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="ddlcat" runat="server" DataSourceID="SqlDataSource1" DataTextField="CategoryName" DataValueField="CategoryID"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickCarConnectionString %>" SelectCommand="SELECT * FROM [ProductCategories] ORDER BY [CategoryName]"></asp:SqlDataSource>
                                </div>

                                <label>Product Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="t5" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>

                                <label>Product Image</label>
                                <div class="form-group">
                                    <asp:DropDownList ID="lblImage" runat="server"></asp:DropDownList>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="b1" runat="server" Text="ADD" OnClick="b1_Click" />
                                </div>

                                <div class="form-group">
                                    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>
   
</asp:Content>
