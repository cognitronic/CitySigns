﻿<%@ Page Title="Site Signs by City Signs – Modesto, Sacramento, Stockton, Tracy, CA – Real Estate, Commercial, For Sale" Language="C#" MasterPageFile="~/Master/Main.Master" AutoEventWireup="true" CodeBehind="Site-Signs.aspx.cs" Inherits="CitySigns.Site_Signs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <meta id="MetaDescription" name="description" content="City Signs Modesto can help you find which sign or banner to fit your company's budget and needs."><meta id="MetaKeywords" name="keywords" content="outdoor signs, business signs, plastic signs, sign design, ada signs"><meta id="MetaCopyright" name="copyright" content="Copyright (c) 2012">
    <script>
        $(document).ready(function () {
            var cc;
            cc = "Site Signs";
            $('#myGallery').rfg({
                imageWidth: 250,
                center: true,
                spacing: 10,
                categories: false,
                categoryOptions: {
                    defaultCategory: cc,
                    includeAll: false
                },
                flickrSets: [{
                    setId: '72157632191737053',
                    apiKey: 'e127a2e9c96e6e4676823e484d77b8c9'
                }

                ],
                flickrOptions: {
                    useTitle: false
                },
                lightbox: true,
                initialHeight: 500
            });
        });
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
             
     <div style="margin-left: 30px; margin-top: 0px;  width:814px; padding-right: 15px; position:relative">
     <h4 style="padding-left: 20px;"><img src="/Images/bullet_arrow.png" /> SITE SIGNS GALLERY</h4>
    <section id="subheader">
 
    </section>
	<div id='myGallery' class='rfg-gallery' style="min-height: 375px;"></div>
         </div>      
               
      
</asp:Content>