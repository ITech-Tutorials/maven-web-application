<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ITech Tutorials- Home Page</title>
<link href="images/ITechTutorials.png" rel="icon">
</head>
</head>
<body>
<h1 align="center">Welcome to ITech Tutorials.</h1>
<h1 align="center"> ITech Tutorials- One Stop Solution for DevOps Trainings</h1>
<hr>
<br>
	<h1><h3> Server Side IP Address </h3><br>

<% 
String ip = "";
InetAddress inetAddress = InetAddress.getLocalHost();
ip = inetAddress.getHostAddress();
out.println("Server Host Name :: "+inetAddress.getHostName()); 
%>
<br>
<%out.println("Server IP Address :: "+ip);%>
</h1>
<hr>
<div style="text-align: center;">
	<span>
		<img src="images/ITechTutorials.png" alt="" width="100">
	</span>
	<span style="font-weight: bold;">
		ITech Tutorials, 
		Munnekolala, Marathahalli
		Bangalore,
		+91-7338330061
		itechtutorialshub@gmail.com
		<br>
		<a href="mailto:itechtutorialshub@gmail.com">Mail to ITech Tutorials</a>
	</span>
</div>
<hr>
	<p> Service : <a href="services/employee/getEmployeeDetails">Get Employee Details </p>
<hr>
<hr>
<p align=center>ITech Tutorials - Consultant, Training, Development Center.</p>
<p align=center><small>Copyrights 2019 by <a href="http://itechtutorials.com/">ITech Tutorials</a> </small></p>

</body>
</html>
