<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SUVProduct.aspx.cs" Inherits="E_Commerce_Car_Rental.SUVProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="Images/SUVcarbanner.jpg" class="img-fluid w-100"/>
    </section>

    <h3>What's New</h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020SUVRAV4%20-%20Copy.jpg" />

                <div class="caption">
                    <h6>T2020R4</h6>
                    <h5>2020 Toyota RAV4 SUV</h5>
                    <h5>Description:</h5>
                    <p>A compact SUV that is user-friendly, spacious seating and large cargo space.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/MercedesBenzGLS.jpg" />

                <div class="caption">
                    <h6>MB2020G</h6>
                    <h5>2020 Mercedes Benz GLS</h5>
                    <h5>Description:</h5>
                    <p>Luxury large SUV with seven seating capacity.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/2021FordEcoSport.jpg" />

                <div class="caption">
                    <h6>F2021ES</h6>
                    <h5>2021 Ford EcoSport</h5>
                    <h5>Description:</h5>
                    <p>Five seating capacity eco-friendly SUV with large cargo space. </p>
                    <h6>Category:</h6>
                    <p>SUV</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button3" runat="server" Text="Details" />
            </div>
        </div>

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2021LexusLX.jpg" />

                <div class="caption">
                    <h6>L2021LX</h6>
                    <h5>2021 Lexus LX</h5>
                    <h5>Description:</h5>
                    <p>Seating capacity for five passengers with excellent interior space.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                    <div class="product-item-badge">New</div>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button4" runat="server" Text="Details" />
            </div>
        </div>
    </div>

    <h3>Compact<small>SUVs</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2018FordEcoSportSUV.jpg" />

                <div class="caption">
                    <h6>F2018ES</h6>
                    <h5>2018 Ford EcoSport SUV</h5>
                    <h5>Description:</h5>
                    <p>Five passenger subcompact crossover with plenty of interior space.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/2018ToyotaC-HRSUV.jpg" />

                <div class="caption">
                    <h6>T2018HR</h6>
                    <h5>2018 Toyota C-HR SUV</h5>
                    <h5>Description:</h5>
                    <p>Good subcompact SUV with plenty of cargo space for large hauls.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/SuzukiVitaraCompactSUV.jpg" />

                <div class="caption">
                    <h6>S2018CS</h6>
                    <h5>2018 Suzuki Vitara Compact SUV</h5>
                    <h5>Description:</h5>
                    <p>An five seater compact SUV that is reliable and safe for passengers .</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/2020LexusRX360.jpg" />

                <div class="caption">
                    <h6>L2020RX</h6>
                    <h5>2020 Lexus RX 350</h5>
                    <h5>Description:</h5>
                    <p>Midsize luxury crossover with large interior and cargo space.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
                    <h6>Price:</h6>
                    <p>$10,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button8" runat="server" Text="Details" />
            </div>
        </div>
    </div>
    
    <h3>Economic<small>SUVs</small></h3>
    <div class="row product-container">

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2020LexusES.jpg" />

                <div class="caption">
                    <h6>L2020ES</h6>
                    <h5>2020 Lexus ES</h5>
                    <h5>Description:</h5>
                    <p>A midsize luxury sedan with spacious room.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
                    <h6>Price:</h6>
                    <p>$20,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button9" runat="server" Text="Details" />
            </div>
        </div>
        

        <div class="col-md-3 col-sm-3 col-xs-6" style="margin-bottom:8px">
            <div class="img-thumbnail product-item" style="height:600px">
                <img class="img-responsive" title="Click to View Product" 
                    style="cursor:pointer;height:200px;width:250px"
                    src="Images/2017NissanSentra.jpg" />

                <div class="caption">
                    <h6>N2017SS</h6>
                    <h5>2017 Nissan Sentra</h5>
                    <h5>Description:</h5>
                    <p>Compact Sedan with spacious interior perfect for a simple family road trip.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/FordFiesta.jpg" />

                <div class="caption">
                    <h6>F2018FS</h6>
                    <h5>2018 Ford Fiesta</h5>
                    <h5>Description:</h5>
                    <p>A fun to drive car sporty car with small cargo hold.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
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
                    src="Images/2017ToyotaPriusPrime.jpg" />

                <div class="caption">
                    <h6>T2017PP</h6>
                    <h5>2017 Toyota Prius Prime</h5>
                    <h5>Description:</h5>
                    <p>Plug-in hybrid that offers a smooth ride and a nice experience to drive.</p>
                    <h6>Category:</h6>
                    <p>SUV</p>
                    <h6>Price:</h6>
                    <p>$18,000.00</p>
                </div>
                <asp:Button class="btn btn-info btn-block btn-sm" ID="Button12" runat="server" Text="Details" />
            </div>
        </div>
        </div>

</asp:Content>
