<%@page import="java.util.Enumeration"%>
<%@page import="Home.LatestNews"%>
<%@page import="java.util.Vector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Common.DBLogic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
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
#apDiv2 {
	position:absolute;
	width:815px;
	height:21px;
	z-index:1;
	left: 141px;
	top: 547px;
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
	response.sendRedirect("adminlogin.jsp");
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
     <div id="apDiv2">
     <a href="PutLatestUpdate.jsp"><h2>Add new News</h2></a>
       <table align="center" width="120%" border="1">
         <tr>
           <td width="22%"> <h4>Title</h4></td>
           <td width="44%"><h4>Description</h4></td>
           <td width="16%"><h4>Action</h4></td>
           <td width="18%"><h4>Action</h4></td>
         </tr>
         <% Vector<LatestNews> data=DBLogic.getAllFromLatest();
	Enumeration<LatestNews> en=data.elements();
	while (en.hasMoreElements()){ 
		LatestNews u = (LatestNews) en.nextElement(); %>
   
         <tr>
           <td height="32"><h5><%= u.getTitle() %></h5></td>
           <td><h5><%=u.getDesc() %></h5></td>
           <td><a href="DelLatestNews?id=<%=u.getSno()%>"><h5>Delete</h5></a></td>
           <td><a href="UpdateLatestNews.jsp?id=<%=u.getSno()%>"><h5>Update</h5></a></td>
         </tr>
         <%} %>
       </table>
     </div>
<div id="tooplate_mid_home">
  
  
</div>
</body>
</html>
