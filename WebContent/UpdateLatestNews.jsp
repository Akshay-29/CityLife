<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Vector"%>
<%@page import="java.util.Enumeration"%>
<%@page import="Home.LatestNews"%>
<%@page import="Common.DBLogic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#apDiv1 {
	position:absolute;
	width:65px;
	height:27px;
	z-index:1;
	left: 457px;
	top: 794px;
}
</style>
</head>
<body>
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
  
<style type="text/css">
.colors {
	background-color: #000;
}
</style></head>
<body>
<% if(session.getAttribute("id")==null)
{
	response.sendRedirect("adminwelcome.jsp");
} %>
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
    	<div id="site_title"><h1><a href="index.jsp">About City</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp">Home</a></li>
          		<li><a href="#">Login</a>
          		  <ul>
                        <li><a href="userlogin.html">User Login</a></li>
                        <li><a href="memberlogin.html">Member Login</a></li>
                        <li><a href="advlogin.html">Advertiser Login</a></li>
                        <li><a href="adminlogin.html">Adminstration Login</a></li>
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
        	
            <div >
        
              
                <section>
  <span></span>
  <%String id=request.getParameter("id"); %>
   <%ResultSet rs=DBLogic.getRowFromLatestNews(Integer.parseInt(id));
		while(rs.next())
		{%>
  <h1> Edit Latest News</h1>
 <form action="UpdateLatestNews.jsp" method="get">
<table><tr><td><b><h4>New Update Title:</h4></b></td><td><input type="text"  name="titl" value=<%= rs.getString(2) %>></td></tr><br>
<tr><td><strong><h4>New update Description:</h4></strong></td><td><textarea name="desc" value=<%= rs.getString(3)%>></textarea></td></tr></table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br>

  <input type="submit" value="submit">

 </form>
<%}%>
 <% String title=request.getParameter("titl");
String desc=request.getParameter("desc");
DBLogic.putLatestNews(title,desc);%>
  <br />
  <h4 >
  </h4>
 
</section>
            
            </div>

</div>
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