<%@page import="java.util.ArrayList"%>
<%@page import="com.model.Course"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Councilor</title>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style3.css" />
        <link href="css/form_style.css" rel="stylesheet" type="text/css" />
        <script src="js/modernizr.custom.js"></script>
        
        		
	</head>
	<body>
	<div class="container" style = "padding : 0;">
			<header class="codrops-header">
				
				<div class="codrops-related">
					
					<p class="codrops-links" style = "float : right;"><a class="codrops-icon codrops-icon-prev" href="LogOut"><span>LogOut</span></a></p>
				</div>
			</header>
	</div>
			<center><h1>Welcome <%=session.getAttribute("userkey") %></h1></center>
			<div style="margin-top: 11%;">
            
				<%
                List<Course> list=(ArrayList<Course>) request.getAttribute("courselistkey");
                %>
            	<form action="StudentRegistration" method="post" class="bootstrap-frm">
                    <h1>Show Courses
                        <span>Select Course Id from List.</span>
                    </h1>
    
                    <label>
                        <span>Course Id :</span><select name="course_id">
                        <option value=" ">Select</option>
                        <%
                        for(Course crse:list){
                        %>
                        <option value="<%= crse.getCourseId()%>"><%= crse.getCourseId()%></option>
                        <%
                        }
                        %>
                        </select>
                    </label> 
        
                     <label>
                        <span>&nbsp;</span> 
                        <input type="submit" class="button" /> 
                    </label>    
				</form>
            </div>           
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
	</body>
	<script src="js/classie.js"></script>
	<script src="js/borderMenu.js"></script>
</html>