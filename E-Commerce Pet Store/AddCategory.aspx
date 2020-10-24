<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AddCategory.aspx.cs" Inherits="E_Commerce_Pet_Store.AddCategory" %>
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
                                    <h3>Add Category</h3>
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

                                <label>Category Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="T1" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                                </div>

                                 <div class="form-group">
                                     <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
                                 </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Homepage.aspx"><<--Back Home</a><br><br>
            </div>
        </div>
    </div>
</asp:Content>
