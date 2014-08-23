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
		<title>Update Course Info</title>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style3.css" />
        <link href="css/form_style.css" rel="stylesheet" type="text/css" />
        <script src="js/modernizr.custom.js"></script>
        <script type="text/javascript">
function validation()  
{  
	
   var number1 = /^[0-9]{2,3}$/;  
   if( !document.form.capacity.value.match(number1))  
   {  
   alert('Capacity should be 2-3 digit number only');  
   return false;    
   }  
   
}   



</script>
        
        		
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
	%>
			<div style="margin-top: 5%;">
            	<form action="UpdateCourseSuccess" method="post" class="bootstrap-frm" name="form" onsubmit="return validation();">
    <h1>Update Course Info 
        <span>Enter Course Details.</span>
    </h1>
    <%
				for(Course course:list){
			%>
	<label>
        <span>Course<br/> Id :</span>
        <input type="text" name="course_id" value="<%=course.getCourseId()%>" readonly="readonly"/>
    </label>
    <label>
        <span>Course<br/> Name :</span>
        <input type="text" name="course_name" value="<%=course.getCourseName()%>" readonly="readonly"/>
    </label>
    
    <label>
        <span>Duration :</span>
        <input type="text" name="duration" value="<%=course.getDuration()%>" readonly="readonly"/>
    </label>
    
    <label>
        <span>Schedule :</span><input type="text" name="schedule" value="<%=course.getSchedule()%>" readonly="readonly"/>
    </label>
    
    <label>
        <span>Start Date :</span>
        <input type="text" name="start_date" value="<%=course.getStartDate()%>" readonly="readonly"/>
    </label>
    
    <label>
        <span>End Date :</span>
        <input type="text" name="end_date"  value="<%=course.getEndDate()%>" readonly="readonly"/>
    </label>
    
    <label>
        <span>Capacity :</span>
        <input type="text" name="capacity" value="<%=course.getCapacity()%>"/>
    </label>
    
    <%
				}
	%>
       
     <label>
        <span>&nbsp;</span> 
        <input type="submit" class="button" value="Update"/> 
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