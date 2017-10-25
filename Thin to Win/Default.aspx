<%@ Page Title="Thin To Win" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Thin_to_Win._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link href="/Content/HomePage.css" rel="stylesheet" />

<main>

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
            <li data-target="#myCarousel" data-slide-to="4"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="Images/HomePage/Slideshow1.gif" alt="Man weight lifting" />
            </div>
            <div class="item">
                <img src="Images/HomePage/Slideshow2.gif" alt="Woman doing Yoga" />
            </div>
            <div class="item">
                <img src="Images/HomePage/Slideshow3.gif" alt="Woman doing Yoga"  />
            </div>
            <div class="item">
                <img src="Images/HomePage/Slideshow4.gif" alt="Man running"  />
            </div>
            <div class="item">
                <img src="Images/HomePage/Slideshow5.gif" alt="Woman stretching" />
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

  

     
<div class="container-fluid text-center">    
    <div class="row content">
        <div class="col-md-9 text-left">
            <div class="col-md-12">
                <h1 class="text-center">ABOUT US</h1>
                <p class="text-justify"><span class="win">THIN TO WIN </span>is the world's easiest  online application that will help you set your fitness goals fast. Your transformation is our passion. 
                   We are your personal trainer, your nutritionist, your supplement expert, your lifting partner, your support group. We provide the technology, tools, 
                   and products you need to burn fat, build muscle, and become your best self. </p>
                <h3>Customers come first.</h3>
                <p class="text-justify">If you call us in the middle of the night with a question, we’ll be there for you. If your motivation is flagging, we’ve got your back. 
                    We’re obsessed with creating the best fitness site out there because we love hearing about your success.</p> 
                <h3>These core values unite us and remind us what's important:</h3>
                <ol>
                    <li>Always Be Truthful And Honest In Every Aspect Of Business</li>
                    <li>Give Back To The People To Whom You Owe Your Success</li>
                    <li>Setting Goals Creates The Roadmap To Positive Gains</li>
                    <li>Great Things Will Happen With A Passion For Competition</li>
                    <li>It’s Our Goal To Make The Big Idea Bigger</li>
                    <li>Our Mission Is Not Complete Until The Customer Says “Wow”</li>
                </ol>
            </div>
            <hr class="divider">
            <div class="col-md-6 text-center">
                <a  href="#" > <!--Links to Health News Page -->
                    <img src="Images/HomePage/Excersice.jpg" class="img-responsive" alt="Health News" width="400" height="250" />
                </a>  
                <h3>Content</h3>
                <p>We have thousands of free articles and the best health news feed from the best experts in the field. Find info on nutrition, 
                   workouts, supplements, motivation and more.</p>              
            </div>
            <div class="col-md-6 text-center">
                <a  href="#" > <!-- Links to Online Store Page -->
                    <img src="Images/HomePage/Food2.jpg" class="img-responsive" alt="Store" width="400" height="250"/>
                </a>
                <h3>Store</h3>
                <p>We’re the world’s #1 online sports nutrition retailer because our customers trust us to carry the world’s leading fitness supplements 
                   brands at the best prices. And did we mention we have the best customer support?</p>
            </div>
            <hr class="divider">
            <div class="col-md-12 text-center">
                <img src="Images/HomePage/Calculator.jpg"  class="img-responsive" alt="Fitness Calculator" width="800" height="400"/> <!-- Image needs to be responsive-->
                <h3>FITNESS CALCULATOR</h3>
                <p>It all starts with our Fitness Calculator tool. We offer our customers the opportunity to get a quick assessment on their current fitness level
                   based in their Body Mass Index (BMI). Basic information is provided by our customers, age, gender, weight and height. Our algorithm provides a quick recommnedation 
                   on the programs to follow.</p>
                <p>Our Fitness Calculator is the world's best place for free, comprehensive fitness plans! Whether you want to lose fat, build muscle, boost strength, 
                   or completely reshape your body, we have the perfect program for you. Designed by top trainers, fitness experts, and best nutircionist, our plans include
                   daily workouts, and nutrition information. </p> 
                <a href="Calculator.aspx" class="btn btn-success btn-lg">BMI Calculator</a> <!--Links to BMI Calculator/ must add to Updated file-->
            </div>
        </div>             
        <div class="col-sm-3 sidenav">
            <div class="fb-page" data-href="https://www.facebook.com/crossfit/" data-tabs="timeline" data-small-header="false" 
                data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true">
                <blockquote cite="https://www.facebook.com/crossfit/" class="fb-xfbml-parse-ignore">
                    <a href="https://www.facebook.com/crossfit/">CrossFit</a>
                </blockquote>
             </div>
            <hr>
            <div class="well">
                <a href="https://www.kettlebellkitchen.com/" target="_blank" > <!--Must add to final-->
                    <img src="Images/HomePage/KettlebellLogo.png" alt="Kettlebell" width="200" height="130" />
                </a>
            </div>
            <hr>
            <div class="well">
                <a href="https://www.musclepharm.com/" target="_blank" > <!--Must add to final-->
                    <img src="Images/HomePage/MusclePharmLogo.png" alt="Muscle Pharm" width="200" height="130" />
                </a>
            </div>
            <hr>
            <div class="well">
                <a href="https://www.crossfit.com/" target="_blank" > <!--Must add to final-->
                    <img src="Images/HomePage/CrossfitLogo.png" alt="Crossfit" width="200" height="130" />
                </a>
            </div>
            <hr>
            <div class="well">
                <a href="http://www.heart.org/HEARTORG/" target="_blank" > <!--Must add to final-->
                    <img src="Images/HomePage/HeartAssoLogo.png" alt="American Heart Assc." width="200" height="130"/>
                </a>
            </div>
        </div>
    </div>
</div>
</main>
   

</asp:Content>
