<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="E_Commerce_Pet_Store.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
       <div class="container p-1 p-sm-3">
           <div class="row">
               <div class="col-12">
                   <h2>About Us</h2>
               </div>
           </div>
       </div>

   </section>

    <section class="about-company-section">
        <div class="container p-1 p-sm-3">
            <div class="row">
                <div class="col-12 text-center">
                    <h2>Welcome to QuickCar</h2>
                    <hr />
                </div>

                <div class="col-md-3">
                    <img class="img-fluid" src="Images/carlogo.png" />

                </div>

                <div class="col-9">
                    <p>
                        QuickCar is a brand new car rental service that provides our customers a wide range of luxurious cars to choose from.
                        These include top brands such as Ford, Mercedes Benz and so much more. We provide customer friendly services to find
                        your ideal rentals for every occassion of your journey.
                    </p>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
