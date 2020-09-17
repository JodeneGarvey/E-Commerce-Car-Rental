<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserRegister.aspx.cs" Inherits="E_Commerce_Car_Rental.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="Images/userlogin.png" />

                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Registration</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>


                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Date of Birth" TextMode="Date"></asp:TextBox> 
                                </div>
                            </div>
                          </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Email Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email Address" TextMode="Email"></asp:TextBox> 
                                </div>
                            </div>

                        </div>

                            <div class="row">
                            <div class="col-md-4">
                                <label>Street Address</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Street Address"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>District</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="District"></asp:TextBox> 
                                </div>
                            </div>

                            <div class="col-md-4">
                                <label>Parish</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-group" ID="DropDownList1"  runat="server">
                                        <asp:ListItem Text="Select" Value="select" />
                                        <asp:ListItem Text="Kingston" Value="Kingston" />
                                        <asp:ListItem Text="St. Andrew" Value="St. Andrew" />
                                        <asp:ListItem Text="Manchester" Value="Manchester" />
                                        <asp:ListItem Text="St. Catherine" Value="St. Catherine" />
                                        <asp:ListItem Text="St. Thomas" Value="St. Thomas" />
                                        <asp:ListItem Text="St. Mary" Value="St. Mary" />
                                        <asp:ListItem Text="Portland" Value="Portland" />
                                        <asp:ListItem Text="St. Ann" Value="St. Ann" />
                                        <asp:ListItem Text="Trelawny" Value="Trelawny" />
                                        <asp:ListItem Text="St. James" Value="St. James" />
                                        <asp:ListItem Text="Hanover" Value="Hanover" />
                                        <asp:ListItem Text="Westmoreland" Value="Westmoreland" />
                                        <asp:ListItem Text="St. Elizabeth" Value="St. Elizabeth" />
                                        <asp:ListItem Text="Clarendon" Value="Clarendon" />
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                          <div class="row">
                           <div class="col">
                               <label>Full Address</label>
                             <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
                             </div>
                           </div>
                        </div>

                        <div class="row">
                            
                            <div class="col">
                              <center>
                                <h5>Credentials</h5>
                              </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>User Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User Name"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button CssClass="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Register" />
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
