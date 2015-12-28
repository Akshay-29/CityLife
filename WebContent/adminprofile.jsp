<%@page language="java" import="java.sql.*, java.io.*" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Orange Bond - Blog Post</title>
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

</head>
<body>

<div id="tooplate_header">
	<div id="tooplate_top">
    	<div id="tooplate_search">
   
		</div>
    </div>
    <div id="tooplate_titlebar">
    	<div id="site_title"><h1></h1></div>
        <div id="tooplate_menu" class="ddsmoothmenu">
            <ul>
              <li><a href="index.jsp">Home</a></li>
            <li><a href="#">Logout</a></li>
          </ul>
        </div>
    </div>
    
    <div id="tooplate_mid_wrapper">
    	<div id="tooplate_mid_sub">
		           
        </div>
    </div>
</div> <!-- end of header -->

<div id="tooplate_main">

  <div id="content">
    <div class="post_box">
     
          
        	<h2>Admin  profile:
        	 <%
   	  String name=(String)session.getAttribute("id"); 	
   	  out.print(name);
   	  %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	  <a  href='adminlogout'>logout</a>
        	  <a  href='editadminpro.jsp'>Edit your profile</a></h2>
            <img src="retAdminImg" alt=" my pic" />
            
   	 
   	  </div>
   
  </div>
    
	<div class="cleaner"></div>
</div>



<div id="tooplate_cr_bar_wrapper">
	
</div>

</body>
</html>