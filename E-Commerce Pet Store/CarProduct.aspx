<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CarProduct.aspx.cs" Inherits="E_Commerce_Car_Rental.CarProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Images/carbanner2.jpg" class="img-fluid w-100"/>
    </section>

    <h3>What's New</h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020ToyotaHighlander.jpg" />

                <div class="caption">
                    <h6>T2020HL</h6>
                    <h5>2020 Toyota Highlander</h5>
                    <h5>Description:</h5>
                    <p>Three-row crossover with eight seats gentle ride and sizable cargo hold.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$25,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button1" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/ToyotaPriusHybrid.jpg" />

                <div class="caption">
                    <h6>T2021PH</h6>
                    <h5>2021 Toyota Prius Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Four Seater Powered by both a gasoline engine and electric motor.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button2" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/ToyotaRAV4Hybrid.jpg" />

                <div class="caption">
                    <h6>T2019R4</h6>
                    <h5>2019 Toyota RAV4 Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Five Seater Crossover with latest technological amenities. </p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$18,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button3" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019ToyotaCorollaHatchback.jpg" />

                <div class="caption">
                    <h6>T2019CH</h6>
                    <h5>2019 Toyota Corolla Hatchback</h5>
                    <h5>Description:</h5>
                    <p>Four-door hatchback with seating for five.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button4" runat="server" Text="Details" />
            </div>
        </div>
    </div>

    <h3>Compact<small>Cars</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2021ChevySpark.jpg" />

                <div class="caption">
                    <h6>CS2021S</h6>
                    <h5>2021 Chevy Spark</h5>
                    <h5>Description:</h5>
                    <p>Four passenger seater compact car with plenty of space for the family.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$13,000.00</p>
                </div> 
                   <asp:Button class="btn btn-info btn-block btn-sm" ID="Button5" runat="server" Text="Details" />
            </div>
           
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/FordFocus2018.jpg" />

                <div class="caption">
                    <h6>F2018FC</h6>
                    <h5>2018 Ford Focus</h5>
                    <h5>Description:</h5>
                    <p>Four-door Ford Focus covers a lot of ground for a small car.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$15,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button6" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/HyundaiElantra2016.jpg" />

                <div class="caption">
                    <h6>H2016EC</h6>
                    <h5>2016 Hyundai Elantra</h5>
                    <h5>Description:</h5>
                    <p>Compact car with plenty of seating and cargo space.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$18,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button7" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/NissanVersa.jpg" />

                <div class="caption">
                    <h6>N2016VC</h6>
                    <h5>2016 Nissan Versa</h5>
                    <h5>Description:</h5>
                    <p>Compact car with good feul economy ratings.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button8" runat="server" Text="Details" />
            </div>
        </div>
    </div>
    
    <h3>Economic<small>Cars</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2018NissanKicks.jpg" />

                <div class="caption">
                    <h6>N2018KC</h6>
                    <h5>2018 Nissan Kicks</h5>
                    <h5>Description:</h5>
                    <p>A subcompact SUV crossover with large passenger and cargo capacity.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$15,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button9" runat="server" Text="Details" />
            </div>
        </div>
        

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019LexusGX460.jpg" />

                <div class="caption">
                    <h6>L2019GX</h6>
                    <h5>2019 Lexus GX 460</h5>
                    <h5>Description:</h5>
                    <p>A great off-roader car perfect for long journeys around the countryside.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$12,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button10" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020NissanX-TrailSUV.jpg" />

                <div class="caption">
                    <h6>N2020NX</h6>
                    <h5>2020 Nissan X-Trail SUV</h5>
                    <h5>Description:</h5>
                    <p>A great car that offer plenty of space for all the family.</p>
                    <h6>Category:</h6>
                    <p>Car</p>
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
                    src="Images/MercedesML450HybridSUV.jpg" />

                <div class="caption">
                    <h6>M2011ML</h6>
                    <h5>2011 Mercedes ML450 Hybrid</h5>
                    <h5>Description:</h5>
                    <p>An Five passenger midsize luxury Hybrid car .</p>
                    <h6>Category:</h6>
                    <p>Car</p>
                    <h6>Price:</h6>
                    <p>$12,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button12" runat="server" Text="Details" />
            </div>
        </div>
        </div>
    
        
</asp:Content>
