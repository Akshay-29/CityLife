<%@page import="sun.org.mozilla.javascript.internal.ast.WhileLoop"%>
<%@page import="Common.DBLogic"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>city life</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css1/tooplate_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="css1/nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>

<link rel="stylesheet" type="text/css" href="css1/ddsmoothmenu.css" />

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
#apDiv1 {
	position:absolute;
	width:273px;
	height:38px;
	z-index:1;
	left: 1196px;
	top: 542px;
}
#apDiv2 {
	position:absolute;
	width:691px;
	height:auto;
	z-index:2;
	left: 972px;
	top: 596px;
}
#apDiv3 {
	position:absolute;
	width:381px;
	height:auto;
	z-index:3;
	left: 350px;
	top: 608px;
}
#apDiv4 {
	position:absolute;
	width:377px;
	height:48px;
	z-index:4;
	left: 336px;
	top: 893px;
	font-weight: bold;
}
#apDiv5 {
	position:absolute;
	width:274px;
	height:auto;
	z-index:5;
	left: 46px;
	top: 53px;
}
#heading {
	color: #03F;
}
#apDiv6 {
	position:absolute;
	width:146px;
	height:37px;
	z-index:5;
	left: 461px;
	top: 6px;
}
</style>
</head>
<body>
<div id="apDiv6">
 <a href="signup.jsp"> <img src="images/signup.jpg"></a>
</div>
<div id="tooplate_header">
  <div id="tooplate_top">
    <div id="tooplate_search">
      <form action="CityRedirect" method="get">
      <input type="text" value="Search" name="keyword" id="keyword" title="keyword" onfocus="clearText(this)" onblur="clearText(this)" class="txt_field" />
        <input type="submit" name="Search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
        </form>
	  </div>
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1><a href="index.jsp">CITY VIEW</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp" class="selected">Home</a></li>
          		
         	  <li><a href="#">Login</a>
              <ul>
                        
                        <li><a href="memberlogin.jsp">Member Login</a></li>
                        <li><a href="advlogin.jsp">Advertiser Login</a></li>
                       <li><a href="adminlogin.jsp">Administration Login</a></li>

                        </ul>
              </li>
         	  <li><a href="#">City</a>
                <ul>
                        <li><a href="portfolio.html">Srinagar</a></li>
                        
                  </ul>
              </li>
              <li><a href="portfolio.jsp">Suggestions</a>
                
              </li>
              <li><a href="cot.jsp">Qwery&chat</a></li>
              <li><a href="about.html">About Us</a>
                    
              </li>
              <li><a href="contact.html">Contact Us</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
    </div>
    
    <div id="tooplate_mid_wrapper">
    	<div id="tooplate_mid_home">
        	
            <div >
        
                    <div id="slider" class="nivoSlider">
                    <img src="images/slider/02.jpg" alt="Image 01" title=" Way To Amarnath." />
                    <img src="images/slider/05.jpg" alt="Image 02" title="NIT Srinagar play ground"/>
                    <img src="images/slider/03.jpg" alt="Image 03" title="SonMarg" />
                    <img src="images/slider/04.jpg" alt="Image 04" title="NIT Srinagar Campus" />
                </div>
                <div id="htmlcaption" class="nivo-html-caption">
                    <strong>This</strong> is an example of a HTML caption with <a href="#">a link</a>.
                </div>
            
            </div>
                <script type="text/javascript" src="js/jquery-1.4.3.min.js"></script>
				<script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
                <script type="text/javascript">
                $(window).load(function() {
                    $('#slider').nivoSlider();
                });
                </script>
            <div class="cleaner"></div>
        	
        </div>
    </div>
</div> <!-- end of header -->

<div id="tooplate_main">
  <div id="apDiv2">
  <iframe id="NewsWindow" seamless src="latestnews.jsp" width="350"
   height="290" marginwidth="0" marginheight="0" frameborder="0" scrolling="no" 
   style="display: block; margin: 0 auto; padding: 0; border: #000000 1px solid;"></iframe>
</div>
  <h2 id="heading"> Recent Reviews</h2><br>
  <br>
<!-- -->
<div id="apDiv3">
   <% 
   int count=0;
   ResultSet rs=DBLogic.getAll();
      while(rs.next() && count<3)
      { %><table>
    	 <tr><td><h5><% out.print(rs.getString(2));%></h5><%
          out.print(rs.getString(3));%></td></tr></table><br><%
    	  count++;
      }
      %><a href="allposts.jsp"> see all</a>
</div>
<br></div>
  <div id="apDiv1">
  <h3 id="heading">Latest Events</h3></div>
<div class="cleaner">
  <div id="apDiv4">
  <h3 id="heading"> Post your comments</h3><br /><br />
  <div id="apDiv5">
   <form id="form1" name="form1" method="get" action="ReviewPost">
    NAME:<input type="text" name="nm"/><br /><br />
    Reviews:<br /><textarea type="textarea"   name="rvw"></textarea><br />
   <input type="submit" value="Post" /> 
  </form></div>
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
                 <li>Arvind yadav <a href="#">http://bit.ly/13IwZOl</a></li>
                <li>vishal kumar <a href="#">http://bit.ly/13IwZOl</a></li>
                <li>Hetram Meena <a href="#">http://bit.ly/13IwZOl</a></li>
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