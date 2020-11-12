<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="UserLogin.aspx.cs" Inherits="E_Commerce_Pet_Store.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="Images/userlogin.png" />

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
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
                               <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="TxtUser" placeholder="User Name" ></asp:TextBox>
                                </div>

                                <label>User Password</label>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtPassword" CssClass="form-control" runat="server" placeholder="Password" TextMode="Password"  ></asp:TextBox>
                                </div>

                                 <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>
                                
                                <br />
                                 <div class="form-group">
                                     <a href="UserRegister.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Register" /></a>
                                </div>
                                <br />
                                <asp:Literal ID="LitMsg" runat="server"></asp:Literal>
                                <br />
                                <asp:Label ID="user" runat="server"></asp:Label>
                                <asp:Label ID="pass" runat="server"></asp:Label>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="Homepage.aspx"><<--Back Home</a><br><br>
            </div>
        </div>
    </div>
</asp:Content>
