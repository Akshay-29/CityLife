<%@page import="simplesvis.DBLogic"%>
<%@page import="org.apache.tomcat.util.net.SecureNioChannel.ApplicationBufferHandler"%>
<%@page import="javax.jws.soap.SOAPBinding.Use"%>
<%@page import="java.sql.SQLException"%>
<%@page import="simplesvis.*" %>

<%@page import ="java.util.Enumeration "%>
<%@page import ="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Orange Bond - Contact</title>
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

<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="screen" />
	
<script src="js/prototype.js" type="text/javascript"></script>
<script src="js/scriptaculous.js?load=effects,builder" type="text/javascript"></script>
<script src="js/lightbox.js" type="text/javascript"></script>

<style type="text/css">
#apDiv1 {
	position:absolute;
	width:200px;
	height:115px;
	z-index:1;
	left: 18px;
	top: 434px;
}
#apDiv2 {
	position:absolute;
	width:85px;
	height:76px;
	z-index:1;
	left: 27px;
	top: 437px;
}
</style>
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
    	<div id="site_title"><h1><a href="index.jsp">Orange Bond</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp">Home</a></li>
          
				<li><a href="portfolio.html">Login</a>
                    <ul>
                       
                        <li><a href="memberlogin.jsp">Member Login</a></li>
                        <li><a href="advlogin.jsp">Advertiser Login</a></li>
                        <li><a href="adminlogin.jsp">Administration Login</a></li>
					</ul>
              </li>
              <li><a href="#">City</a>
                <ul>
                        <li><a href="portfolio.html">Srinagar</a></li>
                        <li><a href="#">Delhi</a></li>
                        <li><a href="#">Mumbai</a></li>
                        <li><a href="#">Banglore</a></li>
                        <li><a href="#">Chennai</a></li>
				</ul>
              </li>
              <li><a href="portfolio.jsp" class="selected">Suggetions</a>
              </li>
                 
                 <li><a href="cot.jsp" class="selected">Qwery&Chat</a>
                 </li>
                 <li><a href="about.html">About Us</a>
				</li>
                 
                 <li><a href="contact.html" class="selected">Contact Us</a>
                 </li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of tooplate_menu -->
    </div>
    
  <div id="tooplate_mid_wrapper">
    <div id="tooplate_mid_sub">

	  <div id="mid_title">
	    <p>FAQs</p>
	    </div>
   	    <p><a href="#" class="">1.quetion no.1</a></p>
      <p><a href="#" class="">2.quetion no.2</a></p>
        <p><a href="#" class="">3.quetion no.3</a></p>
        <p><a href="#" class="">4.quetion no.4</a></p>
        <p><a href="#" class="">5.quetion no.5</a></p>
   	    <p><a href="#" class="">6.quetion no.6</a>    </p>
    </div>
  </div>
</div> <!-- end of header -->


<div class="col_3 float_1" id="bottomNavClose">
  <img src="images/user.jpg" alt="Image usre" width="85" height="74" title="Donec sit amet gravida quam ut condimentum risus." />
  

		<%! String name; %>
<% if(request.getAttribute("id")!=null)
{
name=(String) session.getAttribute("id"); %>
		<h1>Welcome <%out.print(name);%></h1>
 
  <% try{ 
		Vector<User> data=new Vector<User>();
		data=DBLogic.getAll();
		Enumeration<User> en=data.elements();
		while (en.hasMoreElements()) {
			User u = (User) en.nextElement();
			%>
            <table>
			<tr><td><h1>QUES:</h1><%=u.getQues()%></td></tr>
				<tr><td><h2>ANS:</h2><%=u.getAns()%></td></tr>
				
			</table>
		<%} }
		
		catch(Exception e)
		{
			e.printStackTrace();
		out.print("error occured");
		}
		}%>
  
  <div class="col_2 float_l">
    	<h4>QWERY AND CHAT :</h4>
        <div id="contact_form">
            <form method="post" name="contact" action="controls">
							
				<label for="author">Name:</label> <input type="text" id="author" name="author" class="required input_field" />
			  <div class="cleaner h10"></div>
							
				<label for="text">QWERY:</label> 
				<textarea id="text" name="text" rows="0" cols="0" class="required"></textarea>
				<div class="cleaner h10"></div>				
												
				<input type="submit" value="ASK" id="submit" name="submit" class="submit_btn float_l" />
				<input type="reset" value="Reset" id="reset" name="reset" class="submit_btn float_r" />
                            
            </form>	
        </div> 
      </  
  </div>
<div class="cleaner"></div>

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
	Copyright Â© 2048 <a href="#">Company Name</a> - Designed by <a href="http://www.tooplate.com" target="_parent">Website Templates</a>
    </div>
</div>

</body>
</html>