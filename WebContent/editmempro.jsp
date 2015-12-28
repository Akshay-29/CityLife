<%@ page import="simple.*" %>
<%@ page import="simple.editmem" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>City Life</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<!--
Template 2052 Orange Bond
http://www.tooplate.com/view/2052-orange-bond
-->
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">

/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "tooplate_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>
  
</head>
<body>

<div id="tooplate_header">
	<div id="tooplate_top">
    	<div id="tooplate_search">
            <form action="#" method="get">
              <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
              <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
            </form>
		</div>
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1><a href="#">About City</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp">Home</a></li>
          		<li><a href="#">Login</a>
          		  <ul>
                       
                        <li><a href="memberlogin.jsp">Member Login</a></li>
                        <li><a href="advlogin.jsp">Advertiser Login</a></li>
                        <li><a href="adminlogin.jsp">Adminstration Login</a></li>
                  </ul>
              </li>
         	  <li><a href="#">City</a>
                    <ul>
                        <li><a href="portfolio.html">Srinagar</a></li>
                        <li><a href="#">Delhi</a></li>
                        <li><a href="#">Mumbai</a></li>
                        <li><a href="#">Bangalore</a></li>
                        <li><a href="#">Chennai</a></li>
                  </ul>
              </li>
              <li><a href="blog.html">Suggestion</a></li>
              <li><a href="blog.html">Query & Chat</a></li>
              <li><a href="blog.html">About Us</a></li>
              <li><a href="contact.html">Contact Us</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
    </div>
    
    <div id="tooplate_mid_wrapper">
    
    	<div id="tooplate_mid_home">
        	<h6> Manage your profile </h6>
        <div class="container">    
      <div  class="form">
       
    		<form id="contactform" action='editmem',method='get'> 
    			<p class="contact"><label for="name">Id</label></p> 
    			<input  name="id" placeholder="Id" required tabindex="1" type="text"> 
    			 
    			<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required type="email"> 
                
                <p class="contact"><label for="city">City </label></p> 
    			<input id="city" name="city" placeholder="city" required tabindex="2" type="text"> 
                    <p class="contact"><label for="pic">Set your profile picture</label></p> 
    			<input id="pic" name="pic" placeholder="Give path of pic" required tabindex="2" type="text">
    			 	 
                <p class="contact"><label for="password">Date of birth</label></p> 
    			<input type='date' id="dob" name="dob" required> <br />
       <input  name="save"  tabindex="5" value="Save changes" type="submit">
           
   </form> 
</div>      
</div>
          <div class="cleaner"></div>
        	
        </div>
    </div>
</div> <!-- end of header -->

<div id="tooplate_footer_wrapper">
<div id="tooplate_footer">
    	<div class="col_4">
        	<h5>Partner Links</h5>
            <ul class="footer_list">
            	<li><a href="http://www.google.com">Google</a></li>
                <li><a href="http://www.facebook.com">Facebook</a></li>
                <li><a href="http://www.twitter.com">twitter</a></li>
                <li><a href="http://www.flipkart.com">flipkart</a></li>
			</ul>
        </div>
    	<div class="col_4">
   	    <h5>Twitter</h5>
            <ul class="twitter_post">
	            <li>Rohit ravi <a href="#">http://bit.ly/13IwZO</a></li>
                <li>Akshay Dwedi<a href="#">http://bit.ly/13IweP</a></li>
                <li>Rohitas kumar <a href="#">http://bit.ly/13IwZOl</a></li>
			</ul>
        </div>
        <div class="col_4 col_l">
        	<h5>About</h5>
            <p>We provide the exact information of tourist and places in particular city,how to reach,what we can do over there,suggestions regarding visit at particular places according to month..  </p>
            <div class="footer_social_button">
                <a href="#"><img alt="Facebook" src="images/facebook-32x32.png" title="facebook" /></a>
                <a href="#"><img alt="Flickr" src="images/flickr-32x32.png" title="flickr" /></a>
                <a href="#"><img alt="Twitter" src="images/twitter-32x32.png" title="twitter" /></a>
                <a href="#"><img alt="Youtube" src="images/youtube-32x32.png" title="youtube" /></a>
                <a href="#"><img alt="RSS" src="images/rss-32x32.png" title="rss" /></a>
			</div>
		</div>
        <div class="cleaner"></div>
    </div>
</div>

<div id="tooplate_cr_bar_wrapper">
	<div id="tooplate_cr_bar">
	Copyright © 2048 <a href="#">Company Name</a> - Designed by <a href="http://www.tooplate.com" target="_parent">Website Templates</a>
    </div>
</div>

</body>
</html>