<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
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
		<title>Show Course</title>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style3.css" />
        <link rel="stylesheet" type="text/css" href="css/style7.css" />
		<script src="js/modernizr.custom.js"></script>
	</head>
	<body onload ="backDisable()">
    
    	<%
		List<Course> list=(ArrayList<Course>) request.getAttribute("courselistkey");
		%>
		<div class="container">
			<header class="codrops-header">
				<h3>Courses Are Listed Below .</h3>
                <div id="table">
                	<table align="center" cellpadding="20">
                        <tr bordercolor="#FFFFFF">
                            <th>Course Id</th>                        
                            <th>Course Name</th>                        
                            <th>Duration</th>                        
                            <th>Schedule</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Capacity</th>
                        </tr>
                        
                        <%
						for(Course course:list){
						%>
                        <tr>
                            <td><%=course.getCourseId() %></td>
                            <td><%=course.getCourseName() %></td>
                            <td><%=course.getDuration() %></td>
                            <td><%=course.getSchedule() %></td>
                            <td><%=course.getStartDate() %></td>
                            <td><%=course.getEndDate() %></td>
                            <td><%=course.getCapacity() %></td>
                        </tr>
                        
                        <%
						}
						%>                
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