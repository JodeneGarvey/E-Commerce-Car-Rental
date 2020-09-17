<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="E_Commerce_Car_Rental.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-ride="carousel">
       <ol class="carousel-indicators">
        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
        <img src="Images/Aboutus.jpg" class="d-block w-100" alt="Cars">
     <div class="carousel-caption d-none d-md-block">
        <h5>Affordable Prices</h5>
        <p>Different Types of Cars for an Affordable Price.</p>
      </div>
    </div>
    <div class="carousel-item">
        <img src="Images/blackcarbanner.jpg" class="d-block w-100" alt="Black Car">
     <div class="carousel-caption d-none d-md-block">
        <h5>Top Brands</h5>
        <p>Pick From Our Wide Variety of Car Brands.</p>
     </div>
    </div>
    <div class="carousel-item">
        <img src="Images/bluecarbanner.jpg" class="d-block w-100" alt="Blue Car">
    <div class="carousel-caption d-none d-md-block">
        <h5>Latest Models</h5>
        <p>Check Out Our New Collection of Cars.</p>
    </div>
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
   
    <div class="row">
        <div class="col-md-12">
            <div class="page-header">
                <center><h2>Top Brands</h2></center>
            </div>
        </div>
    </div>

    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/mercedes.jpg" /> 

                <div class="caption">
                    <h5>Mercedes Benz</h5>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/lexus.jpg" />

                <div class="caption">
                    <h5>Lexus</h5>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/toyotalogo.jpg" />

                <div class="caption">
                    <h5>Toyota</h5>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/ford.jpg" />

                <div class="caption">
                    <h5>Ford</h5>
                </div>
            </div>
        </div>
    </div>

    <section>
        <img src="Images/carbanner.jpg" class="img-fluid w-100" />
    </section>

    <center><h4>Product Categories</h4></center>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <a href="CarProduct.aspx"><img class="img-responsive" title="Click to View Category" 
                    style="cursor:pointer;height:100px;width:250px"
                    src="Images/HondaCar.jpg" /></a>

                <div class="caption">
                    <h5>Car Types</h5>
                    <p class="text-justify">Choose from a variety of rental cars in this category for your ideal occassions.</p>
                </div>
            </div>
        </div>
        
        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <a href="SUVProduct.aspx"><img class="img-responsive" title="Click to View Category" 
                    style="cursor:pointer;height:100px;width:250px"
                    src="Images/SUVCar.jpg" /></a>

                <div class="caption">
                    <h5>SUV Types</h5>
                    <p class="text-justify">Our SUVs offer plenty of flexibilty for family trips or exploring the countryside.</p>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <a href="TruckProduct.aspx"><img class="img-responsive" title="Click to View Category" 
                    style="cursor:pointer;height:100px;width:250px"
                    src="Images/TruckCar.jpg" /></a>

                <div class="caption">
                    <h5>Truck Types</h5>
                    <p class="text-justify">Ideal for Carrying large haul items these trucks has the power, durability for projects or trips.</p>
                </div>
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:300px">
                <a href="HybridProduct.aspx"><img class="img-responsive" title="Click to View Category" 
                    style="cursor:pointer;height:100px;width:250px"
                    src="Images/HybridCar.jpg" /></a>

                <div class="caption">
                    <h5>Hybrid Types</h5>
                    <p class="text-justify">Desiring an upscale experience rent our luxury cars with plenty of power, modern technology and comfort.</p>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
