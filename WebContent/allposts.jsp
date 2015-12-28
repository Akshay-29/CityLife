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
#apDiv1 {
	position:absolute;
	width:273px;
	height:38px;
	z-index:1;
	left: 931px;
	top: 545px;
}
#apDiv2 {
	position:absolute;
	width:477px;
	height:323px;
	z-index:2;
	left: 810px;
	top: 593px;
}
#apDiv3 {
	position:absolute;
	width:723px;
	height:79px;
	z-index:3;
	left: 143px;
	top: 597px;
}
#apDiv4 {
	position:absolute;
	width:376px;
	height:191px;
	z-index:4;
	left: 272px;
	top: 885px;
	font-weight: bold;
}
#apDiv5 {
	position:absolute;
	width:274px;
	height:148px;
	z-index:5;
	left: 46px;
	top: 39px;
}
#apDiv6 {
	position:absolute;
	width:973px;
	height:163px;
	z-index:1;
	left: 104px;
	top: 545px;
}
.clr {
	color: #00F
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
    	<div id="site_title"><h1><a href="index.jsp">CITY VIEW</a></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp" class="selected">Home</a></li>
          		<li><a href="about.html">About</a>
                    
              </li>
         	  <li><a href="#">Login</a>
              <ul>
                         <li><a href="memberlogin.jsp">Member Login</a></li>
                        <li><a href="advlogin.jsp">Advertiser Login</a></li>
                       <li><a href="adminlogin.jsp">Administration Login</a></li>
                        </ul>
              </li>
         	  <li><a href="portfolio.html">Places</a>
                <ul>
                        <li><a href="#">Srinagar</a></li>
                        
                  </ul>
              </li>
              <li><a href="portfolio.html">Suggestions</a>
                
              </li>
              <li><a href="blog.html">Qwery&chat</a></li>
              <li><a href="contact.html">Contact</a></li>
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
</div> 
<!-- end of header --></div>
<div id="apDiv6">
<h2 class="clr"> All Reviews</h2>
  <br>
 <%int count=0; ResultSet rs=DBLogic.getAll();
      while(rs.next() )
      { %><table>
    	 <tr><td><h5 ><% out.print(rs.getString(2));%></h5><%
          out.print(rs.getString(3));%></td></tr></table><br><%
          
      }%></div>
</body>
</html>
