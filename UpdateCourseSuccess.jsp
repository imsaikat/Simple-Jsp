<%@page import="com.model.Course"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Back.jsp" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Update Course Success</title>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style3.css" />
        <link rel="stylesheet" type="text/css" href="css/style7.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body onload ="backDisable()">
	<div class="container" style = "padding : 0;">
			<header class="codrops-header">
				
				<div class="codrops-related">
					
					<p class="codrops-links" style = "float : right;"><a class="codrops-icon codrops-icon-prev" href="LogOut"><span>LogOut</span></a></p>
				</div>
			</header>
	</div>
    
    	<%
		Course course = (Course) request.getAttribute("coursekey");
		%>
		<div class="container">
			<header class="codrops-header">
				<h1>One Course Is Successfully Updated .</h1>
                <div id="table">
                	<table align="center" cellpadding="20">
                        <tr bordercolor="#FFFFFF">
                            <th>Course Id</th>                        
                            <th>Course Name</th>                        
                            <th>Capacity</th>
                        </tr>
                        <tr>
                            <td><%=course.getCourseId() %></td>
                            <td><%=course.getCourseName() %></td>         
                            <td><%=course.getCapacity() %></td>
                        </tr>                
                    </table>
                </div>
                <nav class="codrops-demos">
					
					<a href="AddNewCourse.html">Add New Course</a>
					<a href="UpdateCourse">Update Existing Course</a>
				</nav>                
      					
			</header>
			<nav id="bt-menu" class="bt-menu">
				<a href="#" class="bt-menu-trigger"><span>Menu</span></a>
				<ul>
					
					<li><a href="Index.html" class="bt-icon icon-home">Home</a></li>
					<li><a href="Login.html" class="bt-icon icon-user-outline">Login</a></li>
					<li><a href="ShowCourse" class="bt-icon icon-browser">Courses</a></li>
					<li><a href="SearchStudents.html" class="bt-icon icon-zoom">Search</a></li>
					<li><a href="About.html" class="bt-icon icon-bubble">About</a></li>
					<li><a href="Contact.html" class="bt-icon icon-email">Contact</a></li>
					
				</ul>
			</nav>
		</div><!-- /container -->
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>