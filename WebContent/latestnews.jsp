<%@page import="java.util.Enumeration"%>
<%@page import="Home.LatestNews"%>
<%@page import="java.util.Vector"%>
<%@page import="Common.DBLogic"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>News</title>

<base target="_blank">

<style type="text/css">
<!--

body	{
	background-color: #666
	margin: 0;
	padding: 0;
	border: 0;
	}


div		{ color: #000000; font: 11px arial, sans-serif; font-weight: normal; }

.title		{ color: #F00; font: 12px arial, sans-serif; font-weight: bold; }

#NewsDiv	{ position: absolute; left: 0; top: 0; width: auto; }


a:link		{ color: #0033FF; text-decoration: underline; }

a:visited	{ color: #6633FF; text-decoration: underline; }

a:active	{ color: #0033FF; text-decoration: underline; }

a:hover		{ color: #6699FF; text-decoration: none; }

-->
</style>


<script type="text/javascript">
var scrollspeed = 1;		// SET SCROLLER SPEED 1 = SLOWEST
var speedjump   = 30;		// ADJUST SCROLL JUMPING = RANGE 20 TO 40
var startdelay  = 2; 		// START SCROLLING DELAY IN SECONDS
var nextdelay   = 0; 		// SECOND SCROLL DELAY IN SECONDS 0 = QUICKEST
var topspace    = 0;		// TOP SPACING FIRST TIME SCROLLING
var frameheight = 204;		// IF YOU RESIZE THE WINDOW EDIT THIS HEIGHT TO MATCH


current = (scrollspeed);


function HeightData() {
    AreaHeight = dataobj.offsetHeight;
    if (AreaHeight === 0) {
        setTimeout("HeightData()", (startdelay * 1000));
    } else {
        ScrollNewsDiv();
    }
}

function NewsScrollStart() {
    dataobj = document.all ? document.all.NewsDiv : document.getElementById("NewsDiv");
    dataobj.style.top = topspace + 'px';
    setTimeout("HeightData()", (startdelay * 1000));
}

function ScrollNewsDiv() {
    dataobj.style.top = parseInt(dataobj.style.top) - scrollspeed + 'px';
    if (parseInt(dataobj.style.top) < AreaHeight * (-1)) {
        dataobj.style.top = frameheight + 'px';
        setTimeout("ScrollNewsDiv()", (nextdelay * 1000));
    } else 
    {
        setTimeout("ScrollNewsDiv()", speedjump);
    }
}
</script>
</head>
<body onMouseover="scrollspeed=0" onMouseout="scrollspeed=current" OnLoad="NewsScrollStart();">
<%--public static String id; --%>

<div id="NewsDiv" style="text-align: left; padding: 5px;">



    <% Vector<LatestNews> data=DBLogic.getAllFromLatest();
	Enumeration<LatestNews> en=data.elements();
	while (en.hasMoreElements()){ 
		LatestNews u = (LatestNews) en.nextElement(); %>
    <table width="340" height="65" border=''>
       <tr><td text align="center"><a href="latestnewsDescription.jsp?id=<%=u.getSno()%>" ><span class="title"><%= u.getTitle()%></span></a></td></tr>
    </table>
    <% } %>
      <br>


</div>

</body>
</html>
