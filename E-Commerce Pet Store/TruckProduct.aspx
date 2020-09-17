<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TruckProduct.aspx.cs" Inherits="E_Commerce_Car_Rental.TruckProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
         <img src="Images/truckbanner.jpg" class="img-fluid w-100"/>
    </section>

    <h3>What's New</h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020ToyotaTacomaTruck.jpg" />

                <div class="caption">
                    <h6>T2020TT</h6>
                    <h5>2020 Toyota Tacoma</h5>
                    <h5>Description:</h5>
                    <p>A compact pickup truck with plenty of cargo space.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$30,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button1" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020Silverado2500HD.jpg" />

                <div class="caption">
                    <h6>C2020SH</h6>
                    <h5>2020 Chevy Silverado 2500 HD</h5>
                    <h5>Description:</h5>
                    <p>An heavy duty truck that delivers more strenght and inproved efficiency.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$14,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button2" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020FordF-150Truck.jpg" />

                <div class="caption">
                    <h6>F2020FT</h6>
                    <h5>2020 Ford F-150</h5>
                    <h5>Description:</h5>
                    <p>Four door family friendly luxury pickup truck with plenty of space. </p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$15,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button3" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    <img src="Images/2022FordMaverickTruck.jpg" />

                <div class="caption">
                    <h6>F2022MT</h6>
                    <h5>2020 Ford Maverick</h5>
                    <h5>Description:</h5>
                    <p>Pick up truck with excellent interior and large cargo space.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button4" runat="server" Text="Details" />
            </div>
        </div>
    </div>

    <h3>Compact<small>Trucks</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2017MercedesBenz%20X-Class.jpg" />

                <div class="caption">
                    <h6>M2017XC</h6>
                    <h5>2017 Mercedes Benz 20X-Class</h5>
                    <h5>Description:</h5>
                    <p>A great pickup truck that can carry large loads.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button5" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2013ToyotaTacomaTruck.jpg" />

                <div class="caption">
                    <h6>T2013TT</h6>
                    <h5>2013 Toyota Tacoma</h5>
                    <h5>Description:</h5>
                    <p>A good used truck with comfortable seating.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$12,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button6" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019HondaRidgelinetruck.jpg" />

                <div class="caption">
                    <h6>H2019RL</h6>
                    <h5>2019 Honda Ridgeline</h5>
                    <h5>Description:</h5>
                    <p>An compact pickup truck with great ride quality.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button7" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/chevy-smalltruck.jpg" />

                <div class="caption">
                    <h6>C2017CT</h6>
                    <h5>2017 Chevy Colorado</h5>
                    <h5>Description:</h5>
                    <p>Midsize pickup four seat extended cab and five seat crew-cab body styles.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button8" runat="server" Text="Details" />
            </div>
        </div>
    </div>
    
    <h3>Economic<small>Trucks</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019FordRanger.jpg" />

                <div class="caption">
                    <h6>F2019RT</h6>
                    <h5>2019 Ford Ranger</h5>
                    <h5>Description:</h5>
                    <p>A midsize pickup truck that is fuel efficient and safe.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button9" runat="server" Text="Details" />
            </div>
        </div>
        

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019NissanFrontier.jpg" />

                <div class="caption">
                    <h6>N2019FT</h6>
                    <h5>2019 Nissan Frontier</h5>
                    <h5>Description:</h5>
                    <p>An midsize pickup truck that seats five people.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$15,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button10" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2011ChevroletAvalanche.jpg" />

                <div class="caption">
                    <h6>C2011AT</h6>
                    <h5>2011 Chevrolet Avalanche</h5>
                    <h5>Description:</h5>
                    <p>A midsize truck with luxury features and large cargo space.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button11" runat="server" Text="Details" />
            </div>
        </div>

         <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2014RamTruck.jpg" />

                <div class="caption">
                    <h6>R201415</h6>
                    <h5>2014 Ram 1500</h5>
                    <h5>Description:</h5>
                    <p>Full size comfortable ride truck that has excellent interior.</p>
                    <h6>Category:</h6>
                    <p>Truck</p>
                    <h6>Price:</h6>
                    <p>$18,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button12" runat="server" Text="Details" />
            </div>
        </div>
        </div>

</asp:Content>
