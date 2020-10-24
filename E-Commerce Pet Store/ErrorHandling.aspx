<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ErrorHandling.aspx.cs" Inherits="E_Commerce_Pet_Store.ErroeHandling" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <center>
        <div style="border: 2px solid #ff0000; background-color:azure">
            <h2>WOOPS, SOMETHING WENT WRONG.....</h2>
            <br />
            <h2>We just experienced an issue. Sorry!</h2>
            <br />
            <h3>Please Return to Our Home Page</h3>
            <br />
            <h3><a href="Homepage.aspx"><<--Return Home</a></h3>
        </div>
    </center>
    <br />
    <br />
</asp:Content>
