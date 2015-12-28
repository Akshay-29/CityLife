<%@page import="Common.DBLogic"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% String id=request.getParameter("id"); %>

  <% ResultSet rs=DBLogic.getRowFromLatestNews(Integer.parseInt(id)); %>
  <% while(rs.next())
  {%> <table text align="center" cellpadding="100px" >
	 <tr><td><span class="title"><%out.print(rs.getString(2));%></span></td></tr></table><%
  }%>
</body>
</html>