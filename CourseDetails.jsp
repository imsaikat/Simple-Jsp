<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Back.jsp" %>

<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Course Details</title>
		
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
        List<Course> list=(ArrayList<Course>) request.getAttribute("courselistkey");
        int studentRegistered=(int) request.getAttribute("studentregisteredkey");
        %>
		<div class="container">
			<header class="codrops-header">
				<h1>Course Details .</h1>
                <div id="table" style="margin-top: 5%">
                	<table align = "center" cellpadding="8">
                        
                        <%
                            for(Course course:list){
                        %>
                        <tr>
                            <th>Course Id :</th><td><%=course.getCourseId() %></td>
                        </tr>
                        <tr>
                            <th>Course Name :</th><td><%=course.getCourseName() %></td>
                        </tr>
                        <tr>
                            <th>Duration :</th><td><%=course.getDuration() %></td>
                        </tr>
                        <tr>
                            <th>Schedule :</th><td><%=course.getSchedule() %></td>
                        </tr>
                        <tr>
                            <th>Start Date :</th><td><%=course.getStartDate() %></td>
                        </tr>
                        <tr>
                            <th>End Date :</th><td><%=course.getEndDate() %></td>
                        </tr>
                        <tr>	
                            <th>Capacity :</th><td><%=course.getCapacity() %></td>
                        </tr>
                        <tr>
                    		<th>Registered<br/> Students :</th><td><%=studentRegistered %></td>
                        </tr>
                        <%
                            }
                        %>
                        <tr>
                                <td class="codrops-demos" style="margin: 0; padding: 0;" align="center" colspan="2">
                                    <a href="StudentRegistrationInfo" >Add New Student</a>
                                </td>
                        </tr>
					</table>
                </div>                
      					
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