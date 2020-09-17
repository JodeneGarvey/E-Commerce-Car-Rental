<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HybridProduct.aspx.cs" Inherits="E_Commerce_Car_Rental.HybridProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Images/Car1Banner.jpg" class="img-fluid w-100"/>
    </section>

    <h3>What's New</h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2019ToyotaPriusHybrid.jpg" />

                <div class="caption">
                    <h6>T2019PH</h6>
                    <h5>2019 Toyota Prius Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Four door five passenger hybrid car with great interior space.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
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
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$30,000.00</p>
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
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$38,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button3" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/LexusLCHybrid.jpg" />

                <div class="caption">
                    <h6>L2021LC</h6>
                    <h5>2021 Lexus LC 500h Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Luxury sport car to get you places faster.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button4" runat="server" Text="Details" />
            </div>
        </div>
    </div>

    <h3>Compact<small>Hybrids</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2017BMWi3HybridCompact.jpg" />

                <div class="caption">
                    <h6>BMW2017</h6>
                    <h5>2017 BMW i3 Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Luxury hybrid car with large interior space.</p>
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
                    src="Images/2016ToyotaRAV4HybridCompact.jpg" />

                <div class="caption">
                    <h6>T2016R4</h6>
                    <h5>2016 Toyota RAV4 Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Compact crossover SUV with plenty of space for a family.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
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
                    src="Images/2017LexusCTHybridCompact.jpg" />

                <div class="caption">
                    <h6>L2017CT</h6>
                    <h5>2017 Lexus CT 200h</h5>
                    <h5>Description:</h5>
                    <p>Compact premium hatchback with a large cargo space.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$15,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button7" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2018ChevyVoltHybridCompact.jpg" />

                <div class="caption">
                    <h6>C2018VH</h6>
                    <h5>2018 Chevy Volt Hybrid</h5>
                    <h5>Description:</h5>
                    <p>Plug-in hybrid hatchback sedan five seater.</p>
                    <h6>Category:</h6>
                    <p>Hybrid<p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button8" runat="server" Text="Details" />
            </div>
        </div>
    </div>
    
    <h3>Economic<small>Hybrids</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2015HondaCivicHybridEco.jpg" />

                <div class="caption">
                    <h6>H2015CH</h6>
                    <h5>2015 Honda Civic Hybrid</h5>
                    <h5>Description:</h5>
                    <p>A compact car with great fuel economy and spacious back seat.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$16,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button9" runat="server" Text="Details" />
            </div>
        </div>
        

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2016ChevroletMalibuHybridEco.jpg" />
                
                <div class="caption">
                    <h6>C2016MH</h6>
                    <h5>2016 Chevrolet Malibu Hybrid</h5>
                    <h5>Description:</h5>
                    <p>A comfortable ride that is efficient and eco-friendly to drive.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
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
                    src="Images/2017FordFusionHybridEco.jpg" />

                <div class="caption">
                    <h6>F2017FH</h6>
                    <h5>2017 Ford Fusion Hybrid</h5>
                    <h5>Description:</h5>
                    <p>A midsize luxury sedan with great interior space.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
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
                    src="Images/2017NissanRogueHybridEco.jpg" />

                <div class="caption">
                    <h6>N2017RH</h6>
                    <h5>2017 Nissan Rogue Hybrid</h5>
                    <h5>Description:</h5>
                    <p>A compact SUV with a roomy and upscale interior.</p>
                    <h6>Category:</h6>
                    <p>Hybrid</p>
                    <h6>Price:</h6>
                    <p>$12,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button12" runat="server" Text="Details" />
            </div>
        </div>
        </div>
    
        
</asp:Content>
