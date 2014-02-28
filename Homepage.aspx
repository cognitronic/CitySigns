<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="CitySigns.Homepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>City Signs - Modesto, Stockton, Tracy, Sacramento, CA - Custom Sign Company, Commercial Business</title>
     <meta id="MetaDescription" name="description" content="City Signs can help you through the process of finding the perfect sign for you. City Signs will design, manufacture, and when needed install and service all types of signs. 
"/><meta id="MetaKeywords" name="keywords" content="signs modesto ca, sacramento sign company, sign businesses tracy california, custom signs stockton"><meta id="MetaCopyright" name="copyright" content="Copyright (c) 2012"/>
    <link rel="stylesheet" type="text/css" href="Styles/HomeStyles.css">
    <link rel="stylesheet" href="Styles/default.css" type="text/css" media="screen">
    <script type="text/javascript" src="Scripts/jquery-1.8.2.min.js"></script>
    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>--%>
    <script type="text/javascript" src="Scripts/lean-slider.js"></script>
    <link rel="stylesheet" href="Styles/lean-slider.css" type="text/css"/>
    <style type="text/css">
    .water
    {
         font-family: Tahoma, Arial, sans-serif;
         color:gray;
    }
    </style>
   
    <script type="text/javascript">
        $(document).ready(function () {
            $(".water").each(function () {
                $tb = $(this);
                if (this.id == "tbDescription") {
                    if ($("textarea#tbDescription").val() != this.title) {
                        $tb.removeClass("water");
                    }
                }
                if ($tb.val() != this.title) {

                    $tb.removeClass("water");
                }
            });

            $(".water").focus(function () {
                $tb = $(this);
                if ($tb.val() == this.title) {
                    $tb.val("");
                    $tb.removeClass("water");
                }
            });

            $(".water").blur(function () {
                $tb = $(this);
                if ($.trim($tb.val()) == "") {
                    $tb.val(this.title);
                    $tb.addClass("water");
                }
            });
        });

    </script>
</head>
<body>
     <div class="pagewrapper">
            <div class="header">
            <div class="header-center">
                <h2 style="color:#ffffff; margin: 243px 0 0 50px; font-size:13px; text-align:center; font-family:arial; position:absolute; line-height: 22px;">Info@CitySignsModesto.com<br>1101 DOKER DRIVE SUITE D, MODESTO, CA 95351</h2>
                <div class="companyidentity">
                <img src="Images/logo.png" style="position:absolute; margin-top:-230px; margin-left:30px;">
                <h2 style="color:#ffffff; margin: -40px 0 0 50px; position:absolute;">209.229.2220</h2>
                <div style="float:right;">
                <ul id="nav">
	                <li><a href="/Homepage.aspx">HOME</a></li>
	                <li><a href="/GalleryHome.aspx">GALLERY</a></li>
	                <li><a href="/OurCompany.aspx">OUR COMPANY</a></li>
	                <li><a href="/Process.aspx">OUR PROCESS</a></li>
                    <li><a href="/AreasWeServe.aspx">AREAS WE SERVE</a></li>
                    <li><a href="/ContactUs.aspx">CONTACT US</a></li>
                </ul>
                </div>
                
            </div>

              <div class="slider-wrapper">
        <div id="slider" class="lean-slider">
            <div class="slide1 lean-slider-slide">
                    <img src="Images/slider1.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide2 lean-slider-slide">
                    <img src="Images/slider10.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide3 lean-slider-slide">
                    <img src="Images/slider3.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider4.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider5.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider6.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider7.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider8.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider9.jpg" width="528px" height="223px" alt="">
            </div>
            <div class="slide4 lean-slider-slide">
                    <img src="Images/slider2.jpg" width="528px" height="223px" alt="">
            </div>
        </div>
        <div id="slider-direction-nav"></div>
        <div id="slider-control-nav"></div>
    </div>
    
    <script type="text/javascript">
        $(document).ready(function () {
            var slider = $('#slider').leanSlider({
                directionNav: '#slider-direction-nav',
                controlNav: '#slider-control-nav'
            });
        });
    </script>

     <div class="one-third" style="margin-left:15px;margin-top: 0px;"><h4 style="margin: 0 0 0 12px;"><img src="Images/bullet_arrow.png" alt=""/> FREE ESTIMATES</h4><p style="margin: 6px 10px;font-size: 11px;text-align: justify; line-height:1.1em">Here at City Signs we will provide you with custom work that is tailored to your needs. We would be happy to provide you an online quote. Please fill out the applicable fields in our contact form to the side, and click submit. One of our sales representatives will review your information and contact you, usually within 24 hours (excluding weekends). Of course, you can always call us for a quote during business hours. We look forward to hearing from you.</p> 
        </div>

                <form id="form1" runat="server" style="z-index: 100 !important; margin-top: 5px;">
        <div class="one-fifth" >
            <asp:RequiredFieldValidator
              runat="server"
                InitialValue="First Name"
                SetFocusOnError="true"
              ID="RequiredFieldValidator1"
                Display="dynamic"
                style="width: 175px !important; margin-left: 0px; padding-top: -10px; display: block !important;"
              ControlToValidate="tbFirstName"
              CssClass="error"
              ErrorMessage="*" />
        <asp:TextBox ClientIDMode="Static" runat="server" ID="tbFirstName" Text="First Name" title="First Name" class="water text-input defaultText required" name="firstname" style="margin-bottom: 5px;"></asp:TextBox><br />
            
            <asp:RequiredFieldValidator
              runat="server"
                InitialValue="Last Name"
              ID="RequiredFieldValidator2"
                SetFocusOnError="true"
                Display="dynamic"
                style="width: 155px !important; margin-left: 0px; padding-top: -10px; display: block !important;"
              ControlToValidate="tbLastName"
              CssClass="error"
              ErrorMessage="*" /> 
            <asp:TextBox runat="server" ID="tbLastName" Text="Last Name" title="Last Name" class="water" name="lastname" style="margin-bottom: 5px;"></asp:TextBox><br />
            
             <asp:RegularExpressionValidator 
                ID="valEmailAddress"
                ControlToValidate="tbEmail"
                SetFocusOnError="true"
                Display="dynamic"
                style="width: 155px !important; margin-left: 0px; padding-top: -10px; display: block !important;"
                CssClass="error"
                ValidationExpression=".*@.*\..*" 
                ErrorMessage="*" 
                EnableClientScript="true"
                Runat="server"/>
            <asp:TextBox runat="server" ID="tbEmail" Text="Email" title="Email" class="water" style="margin-bottom: 5px;" name="email" ></asp:TextBox><br /> 
            
            <asp:RequiredFieldValidator
              runat="server"
              InitialValue="Phone"
              ID="RequiredFieldValidator4"
                SetFocusOnError="true"
                Display="dynamic"
                style="width: 155px !important; margin-left: 0px; padding-top: -10px; display: block !important;"
              ControlToValidate="tbPhone"
              CssClass="error"
              ErrorMessage="*"/> 
            <asp:TextBox runat="server" ID="tbPhone" Text="Phone" title="Phone" class="water" name="phone" style="margin-bottom: 5px;"></asp:TextBox><br />

            <asp:Label runat="server" ID="lblMessage" style="width: 155px !important; font-size: 11px; color: #f00; display: block !important; margin-top: -5px;"/>
        </div>
        <div style="margin-left:210px !important; margin-top: 2px; margin-bottom: 5px;">
       
               
                <asp:TextBox runat="server" ID="tbDescription" style="width: 350px; height: 105px; margin-bottom: 5px;" TextMode="MultiLine" Text="Enter Description" title="Enter Description" class="water" name="lastname"></asp:TextBox><br /> 
                 <asp:RequiredFieldValidator
                runat="server"
                InitialValue="Enter Description"
                ID="RequiredFieldValidator3"
                SetFocusOnError="true"
                Display="Dynamic"
                style="width: 155px !important; display: block !important; padding-top: -10px;"
                  ControlToValidate="tbDescription"
                  CssClass="error"
                  ErrorMessage="*" />
                <asp:LinkButton
                    runat="server"
                    ID="lbFreeEstimate"
                    style="position:relative; margin-top:5px; margin-bottom:10px; margin-left:110px;width:110px;height:10px; border:none;"
                    OnClick="FreeEstimateClicked">
                        <img src="/Images/button_learn_submit.png" alt="Submit Free Estimate" />
                </asp:LinkButton>
        </div>
                    </form>
            </div>
    </div>
        


    <div class="content" style="position:relative;">
    <div class="newback1"><img src="Images/newback.png"></img></div>
    <div class="newback2"><img src="Images/newback2.png"></img></div>
    <div class="sidebar" style="z-index: 100 !important;">
      <div style="margin-left:12px; margin-top:10px;">
      <h4><img src="Images/bullet_arrow.png"> OUR PROCESS</a></h4>    
        <a href="/Process.aspx"><img src="Images/process.png"></a>
        <div style="margin-left:45px; margin-top:20px;">
            <a href="/Process.aspx"><img src="Images/button_learn_more.png"></a></div>
        <div class="social">
            <a target="_blank" href="http://www.facebook.com/CitySignsModesto"><img src="Images/social_fb.png" /></a><a target="_blank" href="http://twitter.com/City_Signs"><img src="Images/social_tw.png" /></a><a target="_blank" href="http://www.youtube.com/channel/UCXIHXboDtWlQJuEJGwwJY4w"><img src="Images/social_yt.png" /></a>
        </div>
    </div>
    </div>
         <div class="two-thirds" style="z-index: 100 !important;" ><h4 style="margin:35px 0 0 12px;"><img src="Images/bullet_arrow.png"> WHICH SIGN IS RIGHT FOR YOU? <br></h4></div>
     <div class="two-thirds" style="z-index: 100 !important; margin-left: 10px; margin-top: 10px; margin-bottom: -10px;">
     <a href="/Banners.aspx"><img src="/Images/button_banners.png" /> </a>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Illuminated-Signs.aspx"><img src="/Images/button_illuminated_signs.png" /></a>
     <a href="/Dimensional-Signs.aspx"><img src="/Images/button_dimensional_signs.png" /></a>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Directory-Signs.aspx"><img src="/Images/button_directory_signs.png" /></a>
     <a href="/Vehicle-Graphics.aspx"><img src="/Images/button_vehicle_graphics.png" /></a>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Service.aspx"><img src="/Images/button_service_install.png" /></a>
     <a href="/Monument-Signs.aspx"><img src="/Images/button_monument_signs.png" /></a>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Site-Signs.aspx"><img src="/Images/button_site_signs.png" /></a>
    <a href="/Digital-Graphics.aspx"> <img src="/Images/button_digital_graphics.png" /></a>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/Sign-Design.aspx"><img src="/Images/button_sign_design.png" /></a>
         <br />
          <p><img src="Images/bullet_arrow.png" class="arrow"> City Signs has over 16 years of experience in creating and installing custom signage.</p>
     <p><img src="Images/bullet_arrow.png" class="arrow"> A sign for your business is an effective way to advertise your products and services, and the best part is that you only pay          for it once. Almost all other forms of advertising come with a monthly bill. </p>
      <p><img src="Images/bullet_arrow.png" class="arrow"> City Signs can help you through the process of finding the perfect sign for you. City Signs will design, manufacture, and when needed install and service all types of signs.</p>
      <p><img src="Images/bullet_arrow.png" class="arrow"> Contact City Signs and start maximizing your advertising dollars with a sign that will get you noticed again and again.</p>
       </div>
           <div style="clear: left;"></div>
    </div>
    <footer>
<div class="footerwrap"></div>
</footer>
</div>



</body>
</html>
