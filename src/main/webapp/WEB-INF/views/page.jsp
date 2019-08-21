<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	String Ctx = request.getContextPath();
%>

<!doctype html>
<html lang="en">
   <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta name="description" content="">
      <meta name="author" content="">
      <link rel="shortcut icon" href="favicon.png" type="image/x-icon">
      <title>Being</title>
      
      <%@ include file="common/css.jspf" %>
      
      <style>
         svg #base 
         {
         fill: rgba(0, 0, 0, 0.66);
         -webkit-mask: url(#mask);
         mask: url(#mask);
         }
         canvas {
         -moz-user-select: none;
         -webkit-user-select: none;
         -ms-user-select: none;
         }
      </style>
   </head>
   <body>
      <!--   START LOADER  -->
      <div id="loader-wrapper" >
         <div class="square-container">
            <div class="square">
               <p>BEING</p>
            </div>
         </div>
         <div class="loader-section section-left"></div>
         <div class="loader-section section-right"></div>
      </div>
      <!--   END LOADER  -->
      <div class="header-wrapper">
         <!--LOGO -->
         <div class="navbar-header col-md-4  col-sm-4 col-xs-4">
            <a class="menu-logo" id="top-logo" href="index.html"><img src="<%=Ctx%>/resources/images/logo.png" alt="logo" title="logo"  >
            </a>
         </div>
         <div class="menu-container col-md-8  col-sm-8 col-xs-8" >
            <!-- START MAIN MENU -->
            <div class="main-menu"  id="main-menu" >
               <ul>
                  <li class="active"><a href="index.html">Home</a></li>
                  <li ><a href="about.html">About</a></li>
                  <li><a href="blog.html">Blog</a></li>
                  <li><a href="boardList">Board</a></li>
                  <li><a href="#">LOGIN</a></li>
                  <c:if test="#">
                  	<li><a href="#">LOGOUT</a></li>
                  </c:if>
               </ul>
            </div>
            <!-- END MAIN MENU -->
            <!-- START HOME MENU -->
            <nav id="bt-menu" class="bt-menu  ">
               <a href="#" class="bt-menu-trigger" id="menu-button"><span></span></a>
               <ul class="menu-options" id="menu">
                  <li class="home-menu" data-menuanchor="home-section"    ><a  data-index="1"  href="#1"> <span>H</span><span>o</span><span>m</span><span>e</span>	  </a>
                  </li>
                  <li  class="home-menu" data-menuanchor="accolades-section"><a data-index="2"  href="#2"><span>O</span><span>u</span><span>r</span> <span>T</span><span>i</span><span>m</span><span>e</span><span>l</span><span>i</span><span>n</span><span>e </span></a>
                  </li>
                  <li class="home-menu" data-menuanchor="skills-section"><a data-index="3"  href="#3"><span>S</span><span>k</span><span>i</span><span>l</span><span>l</span><span>s</span> </a>
                  </li>
                  <li class="home-menu" data-menuanchor="project-section"><a data-index="4"  href="#4"><span>P</span><span>r</span><span>o</span><span>j</span><span>e</span><span>c</span> <span>t</span><span>s</span> </a>
                  </li>
                  <li class="home-menu" data-menuanchor="client-section"><a data-index="5"  href="#5"><span>S</span><span>p</span><span>o</span><span>n</span><span>s</span><span>o</span><span>r</span><span>s</span> </a>
                  </li>
                  <li class="home-menu" data-menuanchor="gallery-section"><a data-index="6"  href="#6"><span>G</span><span>a</span><span>l</span><span>l</span><span>e</span><span>r</span><span>y</span> </a>
                  </li>
                  <li class="home-menu" data-menuanchor="askus-section"><a data-index="7"  href="#7"><span>A</span><span>s</span><span>k</span> <span>U</span><span>s</span> </a>
                  </li>
                  <li class="home-menu" data-menuanchor="contact-section"><a data-index="8"  href="#8"><span>C</span><span>o</span><span>n</span><span>t</span><span>a</span><span>c</span><span>t</span> <span>u</span><span>s</span></a>   
                  </li>
                  <li class="home-menu" data-menuanchor="follow-section"><a data-index="9"  href="#9"><span>F</span><span>o</span><span>l</span><span>l</span><span>o</span><span>w</span> <span>u</span><span>s</span> </a>
                  </li>
                  <!-- HAMBURGER MAIN MENU FOR MOBILE DEVICE -->
                  <li class="hamburger-main-menu selected"><a data-index="7"  href="index.html">Home</a></li>
                  <li class="hamburger-main-menu"><a data-index="7"  href="about.html">About</a></li>
                  <li class="hamburger-main-menu"><a data-index="7"  href="blog.html">Blog</a></li>
               </ul>
               <ul>
                  <!-- MENU SOCIAL LINKS -->
                  <li><a href="http://www.twitter.com/" class="bt-icon"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                  </li>
                  <li><a href="https://plus.google.com/" class="bt-icon"><i class="fa fa-google-plus-official" aria-hidden="true"></i></a>
                  </li>
                  <li><a href="http://www.facebook.com/" class="bt-icon"><i class="fa fa-facebook-official" aria-hidden="true"></i></a>
                  </li>
                  <li><a href="https://github.com/" class="bt-icon"><i class="fa fa-github" aria-hidden="true"></i></a>
                  </li>
               </ul>
            </nav>
         </div>
         <!-- END HOME MENU  -->
      </div>
      <!-- START CONTENT -->
      <div class="main" id="home-fullpage">
         <!-- START HOME SECTION -->
         <section class="l-screen home-section ">
            <div class="container-fluid">
               <!-- START HOME CONTENT -->
               <div id="container" class="wrapper">
                  <div id="home-slider-content"  >
                     <!-- BACKGROUND PATTERN -->
                     <div class="bg_pattern"></div>
                     <!-- START SVG CONTENT -->
                     <div id="home-svg-container">
                        <div class="home-svg-info"  >
                           <!-- START SVG -->
                           <div class="home-svg-text">
                              <svg id="home-container-svgtext"  >
                                 <defs >
                                    <mask id="mask" x="0" y="0" width="100%" height="100%" >
                                       <!-- ALPHA RECTANGLE  -->
                                       <rect id="alpha" x="0" y="0" width="100%" height="100%"/>
                                       <svg >
                                          <!--ALL TEXT YOU WANT -->
                                          <text id="home-svg-title"  x="50%" text-anchor="middle"   y="25%"  dy=".6em" >BEING</text>
                                          <text id="home-svg-subtitle" x="50%" text-anchor="middle" y="80%"   >Be yourself to stand out </text>
                                       </svg>
                                    </mask>
                                 </defs>
                                 <rect id="base" x="0" y="0" width="100%" height="100%"/>
                              </svg>
                           </div>
                           <!-- END SVG -->
                        </div>
                        <h1 class="home-head">PASSION | DESIRE | PERSISTENCE | COMMITMENT</h1>
                     </div>
                     <!--END SVG CONTENT-->
                  </div>
               </div>
               <!--END HOME CONTENT-->
            </div>
         </section>
         <!--END HOME SECTION -->
         <!-- START ACCOLADES SECTION-->
         <section class="l-screen accolades-section">
            <div class="section-content">
               <div class="container-fluid section-wrap">
                  <!-- BACKGROUND PATTERN -->
                  <div class="bg_white_pattern"></div>
                  <header class="top-bar">
                     <h1 class="top-bar__headline">ACCOLADES</h1>
                  </header>
                  <div class="row vertical-center">
                     <div id="accolades-wrap">
                        <div class="wrap-container">
                           <!-- START ACCOLADES-->
                           <!-- START COLUMN ONE -->
                           <div class="column" id="column-one">
                              <div class="circle-wrap" id="circle-one">
                                 <i class="fa fa-behance-square" aria-hidden="true"></i>
                                 <div class="accolades-circle-animation">
                                    <!--  FOR ANIMATION ON MOUSE OVER -->
                                    <i class="fa fa-behance-square" aria-hidden="true"></i>
                                 </div>
                              </div>
                              <div class="line line-one">
                                 <div class="default"></div>
                                 <div class="active"></div>
                              </div>
                              <div class="time-wrap">
                                 <h5>BEHANCE</h5>
                                 <ul>
                                    <li>Creative Branding</li>
                                    <li>Spotlight</li>
                                 </ul>
                              </div>
                           </div>
                           <!-- END COLUMN ONE -->
                           <!-- START COLUMN TWO -->
                           <div class="column" id="column-two">
                              <div class="circle-wrap  main-circle" id="circle-two">
                                 <i class="fa fa-lastfm" aria-hidden="true"></i>
                                 <div class="accolades-circle-animation">
                                    <!-- FOR ANIMATION ON MOUSE OVER -->
                                    <i class="fa fa-lastfm" aria-hidden="true"></i>
                                 </div>
                              </div>
                              <div class="time-wrap ">
                                 <h5>STUMBLE</h5>
                                 <ul>
                                    <li>Muse Room</li>
                                    <li>Triov Media</li>
                                 </ul>
                              </div>
                           </div>
                           <!-- END COLUMN-TWO -->
                           <!-- START COLUMN THREE -->
                           <div class="column" id="column-three">
                              <div class="time-wrap">
                                 <h5>MEDIUM</h5>
                                 <ul>
                                    <li>Smash Magazine</li>
                                    <li>inspire Digital</li>
                                 </ul>
                              </div>
                              <div class="circle-wrap  " id="circle-three">
                                 <i class="fa fa-houzz" aria-hidden="true"></i>
                                 <div class="accolades-circle-animation">
                                    <!-- FOR ANIMATION ON MOUSE OVER -->
                                    <i class="fa fa-houzz" aria-hidden="true"></i>
                                 </div>
                              </div>
                              <div class="line line-three">
                                 <div class="default"></div>
                                 <div class="active"></div>
                              </div>
                           </div>
                           <!-- END COLUMN-THREE-->
                           <!-- START COLUMN-FOUR -->
                           <div class="column" id="column-four">
                              <div class="circle-wrap  " id="circle-four">
                                 <i class="fa fa-stumbleupon" aria-hidden="true"></i>
                                 <div class="accolades-circle-animation">
                                    <!-- FOR ANIMATION ON MOUSE OVER -->
                                    <i class="fa fa-stumbleupon" aria-hidden="true"></i>
                                 </div>
                              </div>
                              <div class="line line-two">
                                 <div class="default"></div>
                                 <div class="active"></div>
                              </div>
                              <div class="time-wrap">
                                 <h5>WEBBY</h5>
                                 <!-- COLUMN 4 HEADER TEXT -->
                                 <ul>
                                    <!-- COLUMN 4 SUB-HEADING TEXT -->
                                    <li>Everia Campaign</li>
                                    <li>Digital Promo </li>
                                 </ul>
                              </div>
                           </div>
                           <!-- END COLUMN-FOUR -->
                           <!-- START COLUMN-FIVE -->
                           <div class="column" id="column-five">
                              <div class="time-wrap">
                                 <h5>AWWWARDS</h5>
                                 <!-- COLUMN 5 HEADER TEXT -->
                                 <ul>
                                    <!-- COLUMN 5 SUB-HEADING TEXT -->
                                    <li>Mobile of the Day</li>
                                    <li>Binnale Web</li>
                                 </ul>
                              </div>
                              <div class="circle-wrap" id="circle-five">
                                 <i class="fa fa-xing" aria-hidden="true"></i>
                                 <div class="accolades-circle-animation">
                                    <!-- FOR ANIMATION ON MOUSE OVER -->
                                    <i class="fa fa-xing" aria-hidden="true"></i>
                                 </div>
                              </div>
                              <div class="line line-five">
                                 <div class="default"></div>
                                 <div class="active"></div>
                              </div>
                           </div>
                           <!-- END COLUMN-FIVE -->
                        </div>
                        <!--END ACCOLADES -->
                     </div>
                     <!-- END WRAP-CONTAINER -->
                  </div>
               </div>
            </div>
         </section>
         <!-- END ACCOLADES  SECTION -->
         <!-- START SKILL SECTION-->
         <section class="l-screen skills-section">
            <div class="section-content" >
               <header class="top-bar">
                  <h1 class="top-bar__headline">SKILLS</h1>
               </header>
               <div class="container section-wrap">
                  <div class="bg_pattern"></div>
                  <div class="row vertical-center">
                     <div class="skill-wrapper"  >
                        <div class="col-md-12 skill-list">
                           <div class="skill-bar-content"  >
                              <ul id="skill">
                                 <li class="bar-1">
                                    <span class="bar-background "></span><span class="expand skill-1"></span>
                                    <p>HTML5</p>
                                 </li>
                                 <li class="bar-2">
                                    <span class="bar-background "></span><span class="expand skill-2"></span>
                                    <p>MUSE</p>
                                 </li>
                                 <li class="bar-3">
                                    <span class="bar-background "></span><span class="expand skill-3"></span>
                                    <p>JQUERY</p>
                                 </li>
                                 <li class="bar-4">
                                    <span class="bar-background "></span><span class="expand skill-4"></span>
                                    <p>RAILS</p>
                                 </li>
                                 <li class="bar-5">
                                    <span class="bar-background "></span><span class="expand skill-5"></span>
                                    <p>PHP</p>
                                 </li>
                              </ul>
                           </div>
                        </div>
                        <div class="col-md-12"  >
                           <div class="carousel slide" id="fade-quote-carousel" data-ride="carousel" data-interval="3000">
                              <!-- CAROUSEL INDICATORS -->
                              <ol class="carousel-indicators">
                                 <li data-target="#fade-quote-carousel" data-slide-to="0" class="active"></li>
                                 <li data-target="#fade-quote-carousel" data-slide-to="1"></li>
                                 <li data-target="#fade-quote-carousel" data-slide-to="2" ></li>
                                 <li data-target="#fade-quote-carousel" data-slide-to="3"></li>
                                 <li data-target="#fade-quote-carousel" data-slide-to="4"></li>
                                 <li data-target="#fade-quote-carousel" data-slide-to="5"></li>
                              </ol>
                              <!-- CAROUSEL ITEMS -->
                              <div class="carousel-inner  media media-quotes media-quotes-med">
                                 <div class="active item">
                                    <blockquote class="media-body">
                                       <p>"Learn the rules like a pro, so you can break them like a project!"</p>
                                       <span>PABLO PICASSO </span>
                                    </blockquote>
                                 </div>
                                 <div class="item">
                                    <blockquote class="media-body">
                                       <p >"Without change there is no innovation,creativity or incentive for improvement!"</p>
                                       <span>WILLIAM POLLARD</span>
                                    </blockquote>
                                 </div>
                                 <div class=" item">
                                    <blockquote class="media-body">
                                       <p>"If you're not prepared to be wrong, you'll never come up with anything original!"</p>
                                       <span> KEN ROBINSON</span>
                                    </blockquote>
                                 </div>
                                 <div class="item">
                                    <blockquote class="media-body">
                                       <p>"Don't be satisfied with stories, how things have gone with others. Unfold your own myth!"</p>
                                       <span>RUMI </span>
                                    </blockquote>
                                 </div>
                                 <div class="item">
                                    <blockquote class="media-body">
                                       <p>"An idea that is not dangerous is unworthy of being called an idea at all"</p>
                                       <span>OSCAR WILDE </span>
                                    </blockquote>
                                 </div>
                                 <div class="item">
                                    <blockquote class="media-body">
                                       <p>"Imagination is everything. It is the preview of life's coming attractions!"</p>
                                       <span>ALBERT EINSTEIN </span>
                                    </blockquote>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- START PROJECT SECTION -->
         <section class="l-screen  project-section">
            <div class="bg_white_pattern"></div>
            <div class="container-fluid" id="project_all_container"   >
               <header class="top-bar" id="project_head">
                  <h1 class="top-bar__headline">PROJECTS</h1>
               </header>
               <div class="row vertical-center">
                  <!-- CLOSE BUTTON-->
                  <span id="project_back"><a href="#project-section/0" class="project-cd-close" title="close"></a></span>
                  <div class="project_content"     >
                     <div class="project_grid"  >
                        <!-- START PROJECT -->
                        <div class="m-projects-container l-slide" >
                           <div class="project-top" ></div>
                           <!-- START PROJECT -->
                           <figure class="effect-project" >
                              <img src="<%=Ctx%>/resources/images/project/project1.jpg"   alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">DUTCHIE MEDIA</h3>
                                 <span>Branding</span> 
                                 <span>Agency</span> 
                                 <span>Winter 2014</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>DUTCHIE MEDIA</h2>
                                 <!-- DETAILS -->
                                 <p>Discover the stories<br>work and projects <br>danish design studio<br> through an experience</p>
                                 <!-- LINK TO PROJECT DETAILS -->
                                 <a href="#project-section/project1"> </a>
                              </figcaption>
                           </figure>
                           <!-- END PROJECT -->
                           <!-- START PROJECT -->
                           <figure class="effect-project"  >
                              <img src="<%=Ctx%>/resources/images/project/project2-vimeo.jpg"   alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">RUSH STUDIOS</h3>
                                 <span>Studios</span> 
                                 <span>Campaign</span> 
                                 <span>Fall Winter</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>RUSH STUDIOS</h2>
                                 <!-- DETAILS -->
                                 <p>The Rush studios in California uses ambient sound, video, interviews to draw users into their project showcase</p>
                                 <!-- LINK TO VIMEO VIDEO PROJECT -->
                                 <a href="https://vimeo.com/176916362" data-gal="prettyPhoto[]">
                                 </a>
                              </figcaption>
                           </figure>
                           <!-- END PROJECT -->
                           <!--START PROJECT -->
                           <figure class="effect-project"  >
                              <img src="<%=Ctx%>/resources/images/project/project3.jpg"  alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">MERCK STATION</h3>
                                 <span>Media Strategy</span> 
                                 <span>Mid Summer</span> 
                                 <span>2016</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>MERCK STATION</h2>
                                 <!-- DETAILS -->
                                 <p>The agency for digital strategy and media planning across the globe</p>
                                 <!-- LINK TO PROJECT DETAILS -->
                                 <a href="#project-section/project3">  </a>
                              </figcaption>
                           </figure>
                           <!-- END PROJECT -->
                           <!-- START PROJECT -->
                           <figure class="effect-project">
                              <img src="<%=Ctx%>/resources/images/project/project4-youtube.jpg" alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">KIAX FOLD</h3>
                                 <span>Brand Media</span> 
                                 <span>Fall Winter</span> 
                                 <span>2014</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>KIAX FOLD </h2>
                                 <!-- DETAILS -->
                                 <p>Explore the ruins of four dimension designs by creative direction</p>
                                 <a href="https://youtu.be/nrJtHemSPW4" data-gal="prettyPhoto[]">
                                 </a>
                                 <!-- LINK TO PROJECT DETAILS 
                                    <a href="#project-section/project4"> </a>-->
                              </figcaption>
                           </figure>
                           <!-- END PROJECT -->
                           <!-- START PROJECT -->
                           <figure class="effect-project">
                              <img src="<%=Ctx%>/resources/images/project/project5.jpg"   alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">DIMENSION</h3>
                                 <span>Strategy Designs</span> 
                                 <span>Post Summer</span> 
                                 <span>2016</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>Dimension</h2>
                                 <!-- DETAILS -->
                                 <p>Ever since the design went live world have been buzzing on who was behind this instant classic</p>
                                 <!-- LINK TO PROJECT DETAILS -->
                                 <a href="#project-section/project5">  </a>
                              </figcaption>
                           </figure>
                           <!-- END PROJECT -->
                           <!--START PROJECT DESCRIPTION TEXT -->
                           <figure class="effect-project">
                              <img src="<%=Ctx%>/resources/images/project/project6.jpg"   alt="" />
                              <!-- PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <div class="project-summary">
                                 <h3 class="project-name">STAR FICTION</h3>
                                 <span>Studio Project</span> 
                                 <span>Brand</span> 
                                 <span>Winter 2016</span> 
                              </div>
                              <!--END PROJECT NAME AND DETAILS FOR SMALL DEVICES -->
                              <figcaption>
                                 <!-- NAME -->
                                 <h2>STAR FICTION</h2>
                                 <!-- DETAILS -->
                                 <p>Unleash your deep design thoughts,change your canvas live and show off your skill level </p>
                                 <!-- LINK TO PROJECT DETAILS -->
                                 <a href="#project-section/project6">  </a>
                              </figcaption>
                           </figure>
                           <!--END PROJECT DESCRIPTION TEXT -->
                        </div>
                     </div>
                  </div>
               </div>
               <!-- START PROJECT SLIDER CONTENT-->
               <div class="l-slide  project-slide project1" data-anchor="project1" >
                  <div class="project-slide-next"><i class="fa fa-angle-right"></i>
                  </div>
                  <div class="project-slide-name">
                     <h2>DUTCHIE MEDIA</h2>
                  </div>
                  <div class="project-slide-details">
                     <div class="project-slide-details-center">
                        <div>
                           <span>BRANDING</span> 
                        </div>
                        <div>
                           <span>AGENCY</span> 
                        </div>
                        <div>
                           <span>WINTER 2014</span> 
                        </div>
                     </div>
                  </div>
                  <!-- SOCIAL LINKS -->
                  <div class="project-slide-social">
                     <a target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                     <a target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                     <a target="_blank" href="https://www.tumblr.com"><i class="fa fa-tumblr"></i></a>
                     <a target="_blank" href="http://www.youtube.com"><i class="fa fa-youtube"></i></a>
                     <a target="_blank" href="https://vimeo.com"><i class="fa fa-vimeo"></i></a> 
                  </div>
                  <div class="project-slide-prev"><i class="fa fa-angle-left"></i>
                  </div>
               </div>
               <!-- END PROJECT SLIDER CONTENT-->
               <!-- START PROJECT SLIDER CONTENT-->
               <div class="l-slide  project-slide project3" data-anchor="project3"  >
                  <div class="project-slide-next"><i class="fa fa-angle-right"></i>
                  </div>
                  <!-- PROJECT NAME -->
                  <div class="project-slide-name">
                     <h2>MERCK STATION</h2>
                  </div>
                  <!-- PROJECT DETAILS -->
                  <div class="project-slide-details">
                     <div class="project-slide-details-center">
                        <div>
                           <span>MEDIA</span> 
                        </div>
                        <div>
                           <span>SUMMER</span> 
                        </div>
                        <div>
                           <span>2016</span> 
                        </div>
                     </div>
                  </div>
                  <!-- SOCIAL LINKS -->
                  <div class="project-slide-social">
                     <a target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                     <a target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                     <a target="_blank" href="https://www.tumblr.com"><i class="fa fa-tumblr"></i></a>
                     <a target="_blank" href="http://www.youtube.com"><i class="fa fa-youtube"></i></a>
                     <a target="_blank" href="https://vimeo.com"><i class="fa fa-vimeo"></i></a> 
                  </div>
                  <div class="project-slide-prev"><i class="fa fa-angle-left"></i>
                  </div>
               </div>
               <!-- START PROJECT SLIDER CONTENT-->
               <div class="l-slide  project-slide project5" data-anchor="project5"  >
                  <div class="project-slide-next"><i class="fa fa-angle-right"></i>
                  </div>
                  <!-- PROJECT NAME -->
                  <div class="project-slide-name">
                     <h2>DIMENSION</h2>
                  </div>
                  <!-- PROJECT DETAILS -->
                  <div class="project-slide-details">
                     <div class="project-slide-details-center">
                        <div>
                           <span>Strategy Designs</span> 
                        </div>
                        <div>
                           <span>Post Summer</span> 
                        </div>
                        <div>
                           <span>2016</span> 
                        </div>
                     </div>
                  </div>
                  <!-- SOCIAL LINKS -->
                  <div class="project-slide-social">
                     <a target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                     <a target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                     <a target="_blank" href="https://www.tumblr.com"><i class="fa fa-tumblr"></i></a>
                     <a target="_blank" href="http://www.youtube.com"><i class="fa fa-youtube"></i></a>
                     <a target="_blank" href="https://vimeo.com"><i class="fa fa-vimeo"></i></a> 
                  </div>
                  <div class="project-slide-prev"><i class="fa fa-angle-left"></i>
                  </div>
               </div>
               <!-- START PROJECT SLIDER CONTENT-->
               <div class="l-slide  project-slide project6" data-anchor="project6"  >
                  <div class="project-slide-next"><i class="fa fa-angle-right"></i>
                  </div>
                  <!-- PROJECT NAME -->
                  <div class="project-slide-name">
                     <h2>STAR FICTION</h2>
                  </div>
                  <!-- PROJECT DETAILS -->
                  <div class="project-slide-details">
                     <div class="project-slide-details-center">
                        <div>
                           <span>AGENCY</span> 
                        </div>
                        <div>
                           <span>BRAND</span> 
                        </div>
                        <div>
                           <span>WINTER 2016</span> 
                        </div>
                     </div>
                  </div>
                  <!-- SOCIAL LINKS -->
                  <div class="project-slide-social">
                     <a target="_blank" href="https://www.facebook.com"><i class="fa fa-facebook"></i></a>
                     <a target="_blank" href="https://plus.google.com"><i class="fa fa-google-plus"></i></a>
                     <a target="_blank" href="https://www.tumblr.com"><i class="fa fa-tumblr"></i></a>
                     <a target="_blank" href="http://www.youtube.com"><i class="fa fa-youtube"></i></a>
                     <a target="_blank" href="https://vimeo.com"><i class="fa fa-vimeo"></i></a> 
                  </div>
                  <div class="project-slide-prev"><i class="fa fa-angle-left"></i>
                  </div>
               </div>
               <!-- ANIMATION BARS -->
               <div class="project_desc" id="project-description">
                  <div class="projectbar">
                     <div class="project-bar color-1">
                     </div>
                  </div>
                  <div class="projectbar">
                     <div class="project-bar color-2">
                     </div>
                  </div>
                  <div class="projectbar">
                     <div class="project-bar color-1">
                     </div>
                  </div>
                  <div class="projectbar">
                     <div class="project-bar color-2">
                     </div>
                  </div>
                  <div class="projectbar">
                     <div class="project-bar color-1">
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- END PROJECT SECTION -->
         <!--START  CLIENT  SECTION-->
         <section class="l-screen client-section">
            <div class="bg_white_pattern"></div>
            <div class="sub_div">
               <header class="top-bar">
                  <h1 class="top-bar__headline">CLIENTS</h1>
               </header>
               <div class="container  vertical-center">
                  <div class="row ">
                     <div id="clients_details">
                        <div id="clients" class="client-wrap effects">
                           <!-- START CLIENT -->
                           <a class="col-md-3 " id="client1">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/1.png"  alt="client">
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client2">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/2.png" alt="client" >
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client3">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/3.png" alt="client" >
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client4">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/4.png" alt="client" > 
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client5">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/5.png"  alt="client" > 
                                 <!--<i class="fa fa-instagram"></i>-->
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client6">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/6.png"  alt="client" > 
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client7">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/7.png"  alt="client" >
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client8">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/8.png"  alt="client"> 
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client9">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/9.png"  alt="client" > 
                                 <!--<i class="fa fa-instagram"></i>-->
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client10">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/10.png"  alt="client" > 
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client11">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/11.png"  alt="client" >
                              </span>
                           </a>
                           <a class="col-md-3 col-sm-6" id="client12">
                              <span class="client_text">
                                 <!-- PNG ICON -->
                                 <img src="<%=Ctx%>/resources/images/clients/12.png"  alt="client"> 
                              </span>
                           </a>
                           <!-- END CLIENT -->
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- END CLIENETS SECTION -->
         <!-- GALLERY SECTION -->
         <section class="l-screen gallery-section">
            <header class="top-bar">
               <h1 class="top-bar__headline animated">GALLERY</h1>
            </header>
            <div class="container vertical-center">
               <div class="bg_pattern"></div>
               <div class="gallery">
                  <div>
                     <div >
                        <div class="gallery_content">
                           <!--START GALLERY FILTERING -->
                           <ul id="filterOptions">
                              <li class="active"><a href="#" class="all"><i class="hi-icon hi-icon-mobil active"></i>ALL</a>
                              </li>
                              <li><a href="#" class="catagory1"><i class="hi-icon hi-icon-mobil"></i>PROJECTS</a>
                              </li>
                              <li><a href="#" class="catagory2"><i class="hi-icon hi-icon-mobil"></i>MEDIA</a>
                              </li>
                           </ul>
                           <!--END GALLERY FILTERING -->
                           <div class="gallery_content">
                              <div id="galleryHolder">
                                 <div class="item catagory1 catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/1.jpg" data-gal="prettyPhoto[gallery3]"><img src="<%=Ctx%>/resources/images/gallery/1.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1 catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/2.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/2.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/3.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/3.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1 catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/4.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/4.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1 catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/5.jpg" data-gal="prettyPhoto[gallery3]"><img src="<%=Ctx%>/resources/images/gallery/5.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1 catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/6.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/6.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory2">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/7.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/7.jpg" alt="gallery" />
                                    </a>
                                 </div>
                                 <div class="item catagory1">
                                    <a href="<%=Ctx%>/resources/images/gallery/large/8.jpg" data-gal="prettyPhoto[gallery3]"> <img src="<%=Ctx%>/resources/images/gallery/8.jpg" alt="Gallery" />
                                    </a>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <!--/MAIN-->
            </div>
         </section>
         <!--START ASK US SECTION -->
         <section class="l-screen askus-section" id="askus">
            <div class="bg_pattern"></div>
            <div class="container-fluid  " id="askus-container">
               <header class="top-bar">
                  <h1 class="top-bar__headline">ASK US</h1>
               </header>
               <div class="wraper vertical-center">
                  <div class="askus_content_bar ">
                     <!--START ASK US 1-->
                     <div class="askusbar" data-askus-number="1">
                        <div class="askus-bar">
                           <div class="askus-question-wrapper" >
                              <div class="askus_question_background"></div>
                              <div class="askus_question">1</div>
                           </div>
                           <div class="title">
                              <div class="askus_questions" id="qst_1">What Type of Projects you Create</div>
                              <!-- ASK US QUESTION -->
                              <div class="askus_sub_content">
                                 <!-- DESCRIPTION ON MOUSE CLICK -->
                                 <h3>What Type of Projects you Create? </h3>
                                 <p class="hidden askus-questions__answer-text" data-answer-number="1">
                                    We have completed a pretty wide range of projects including logos, branding, mobile apps and the list goes on and on!
                                 </p>
                              </div>
                           </div>
                           <div class="askus_answer"><span>?</span>
                           </div>
                        </div>
                     </div>
                     <!--END ASK US1-->
                     <!--START ASK US 2-->
                     <div class="askusbar" data-askus-number="2">
                        <div class="askus-bar">
                           <div class="askus-question-wrapper" >
                              <div class="askus_question_background"></div>
                              <div class="askus_question">2</div>
                           </div>
                           <div class="title">
                              <div class="askus_questions" id="qst_2">Do you Take Over Out Station Projects</div>
                              <!-- ASK US QUESTION -->
                              <div class="askus_sub_content">
                                 <!-- DESCRIPTION ON MOUSE CLICK -->
                                 <h3>Do you Take Over out Station Projects?</h3>
                                 <p class="hidden askus-questions__answer-text" data-answer-number="2">
                                    Yeah! Working across borders has become fun to our team, and we have successfully completed projects for companies around the globe.
                                 </p>
                              </div>
                           </div>
                           <div class="askus_answer"><span>?</span>
                           </div>
                        </div>
                     </div>
                     <!--END ASK US2-->
                     <!--START ASK US 3-->
                     <div class="askusbar" data-percent="100%" data-askus-number="3">
                        <div class="askus-bar">
                           <div class="askus-question-wrapper" >
                              <div class="askus_question_background"></div>
                              <div class="askus_question">3</div>
                           </div>
                           <div class="title">
                              <div class="askus_questions" id="qst_3">Who are Your Existing Clients and Partners</div>
                              <!-- ASK US QUESTION -->
                              <div class="askus_sub_content">
                                 <!-- DESCRIPTION ON MOUSE CLICK -->
                                 <h3>Who are Your Existing Clients and Partners?</h3>
                                 <p class="hidden askus-questions__answer-text" data-answer-number="3">
                                    Being several years in the idustry we have  formed quite a few strong connections across all media verticals .All These partners share our values and we work closely with them to deliver the highest possible standard.  
                                 </p>
                              </div>
                           </div>
                           <div class="askus_answer"><span>?</span>
                           </div>
                        </div>
                     </div>
                     <!--END ASK US3-->
                     <!--START ASK US 4-->
                     <div class="askusbar" data-percent="100%" data-askus-number="4">
                        <div class="askus-bar">
                           <div class="askus-question-wrapper" >
                              <div class="askus_question_background"></div>
                              <div class="askus_question">4</div>
                           </div>
                           <div class="title">
                              <div class="askus_questions" id="qst_4">How Much Will be the Project Cost</div>
                              <!-- ASK US QUESTION -->
                              <div class="askus_sub_content">
                                 <!-- DESCRIPTION ON MOUSE CLICK -->
                                 <h3>How Much Will be the Project Cost?</h3>
                                 <p class="hidden askus-questions__answer-text" data-answer-number="4">
                                    Its hard to predict as its depends on project nature.We approch works more personlised to the nature of requirements.
                                 </p>
                              </div>
                           </div>
                           <div class="askus_answer"><span>?</span>
                           </div>
                        </div>
                     </div>
                     <!--END ASK US4-->
                  </div>
               </div>
               <div id="askus-answers">
                  <div id="askus-answers-inner">
                     <div class="askus-question-icon">
                        <i class="fa fa-question" aria-hidden="true"></i>
                     </div>
                     <h3>Ask us Question </h3>
                     <div class="askus-show-answer">
                     </div>
                  </div>
                  <div class="askus-controls">
                     <div class="askus-controls-inner">
                        <span class="askus-close-button">
                        <a   href="#askus-section"  id="askus_close" class="cd-close" title="close"></a>
                        </span>
                        <a href="#askus-section" class="askus-prev-button">
                        <i class="fa fa-angle-left"></i>
                        </a>
                        <a href="#askus-section" class="askus-next-button">
                        <i class="fa fa-angle-right"></i>
                        </a>
                     </div>
                  </div>
               </div>
            </div>
         </section>
         <!-- END ASK US SECTION -->
         <!--START CONTACT SECTION -->
         <section class="l-screen contact-section" id="contact-form-container">
            <div class="bg_pattern"></div>
            <header class="top-bar">
               <h1 class="top-bar__headline ">CONTACT</h1>
            </header>
            <div class="container-fluid vertical-center">
               <div class="contact">
                  <div class="contact-content"   >
                     <div class="container">
                        <div class="col-md-12 contact-right">
                           <!--START CONTACT DETAILS -->
                           <div class="contact-info-wrapper"  >
                              <div class="contact-info text-center col-sm-12 fadeIn animated">
                                 <div class="row">
                                    <div class="col-sm-4">
                                       <h3>Let's catch up</h3>
                                       <p>55 Bristow Street | Barcelona</p>
                                    </div>
                                    <div class="col-sm-4">
                                       <div class="phone">
                                          <h3>Say Hello On</h3>
                                          <p>+00 911-911-911</p>
                                       </div>
                                    </div>
                                    <div class="col-sm-4">
                                       <div class="email">
                                          <h3>Drop us a email</h3>
                                          <p>hello@ergo7.net</p>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                           <!--END CONTACT DETAILS -->
                           <!--START CONTACT FORM INPUTS-->
                           <form action="#" id="mail_form" method="post">
                              <input type="text" placeholder="Your name" name="contact[name]">
                              <input type="text" placeholder="Your email" name="contact[email]">
                              <textarea placeholder="Your message" id="message" name="contact[message]"></textarea>
                              <br>
                              <button class="button submit-button"><i class="button-icon fa fa-envelope" aria-hidden="true"></i> <span>SEND</span></button>
                           </form>
                           <!--END CONTACT FORM INPUTS-->
                        </div>
                        <div class="clearfix"></div>
                     </div>
                     <div class="result"></div>
                  </div>
               </div>
            </div>
         </section>
         <!-- END CONTACT SECTION -->
         <!--START FOLLOW US SECTION -->
         <section class="l-screen follow-section">
            <div class="bg_pattern"></div>
            <div class="container-fluid  "  >
               <div class="wraper vertical-center">
                  <div class="follow-us-wrapper">
                     <div class="row">
                        <div class="col-md-12 col-lg-12 social-wrapper"  >
                           <a  href="#"><img src="<%=Ctx%>/resources/images/logo.png" alt="" title="" width="121" >
                           </a>
                           <ul class="follow-social">
                              <!-- SOCIAL LINKS -->
                              <li><a href="http://www.twitter.com/" class="bt-icon"><i class="icon-social-twitter "  ></i></a>
                              </li>
                              <li><a href="https://plus.google.com/" class="bt-icon"><i class="icon-social-google"  ></i></a>
                              </li>
                              <li><a href="http://www.facebook.com/" class="bt-icon"><i class="icon-social-facebook"  ></i></a>
                              </li>
                              <li><a href="https://github.com/" class="bt-icon"><i class="icon-social-github"  ></i></a>
                              </li>
                           </ul>
                           <h2>PASSION | DESIRE | PERSISTENCE | COMMITMENT</h2>
                        </div>
                     </div>
                     <!-- START PROJECT COUNTER  -->
                     <div class="row project-counter"  >
                        <div class="col-sm-3 text-center">
                           <span  class="count" data-count="525">525</span>
                           <p>MEDIA PROJECTS</p>
                        </div>
                        <div class="col-sm-3 text-center">
                           <span  class="count" data-count="328">328</span>
                           <p>EMPANADAS ORDERED</p>
                        </div>
                        <div class="col-sm-3 text-center">
                           <span   class="count" data-count="124">124</span>
                           <p>AWARDS RECIEVED</p>
                        </div>
                        <div class="col-sm-3 text-center">
                           <span   class="count" data-count="456">456</span>
                           <p>AWZOM CREATIVES</p>
                        </div>
                     </div>
                     <!-- END PROJECT COUNTER  -->
                  </div>
               </div>
               <a id="scrollUp" href="#1" ><i class=" icon-arrow-up" ></i> </a>
            </div>
         </section>
      </div>
      <!-- END MAIN DIV -->
      <%@ include file="common/js.jspf" %>
      
   </body>
</html>