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
		<title>Add new student</title>
		
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/icons.css" />
		<link rel="stylesheet" type="text/css" href="css/style3.css" />
        <link href="css/form_style2.css" rel="stylesheet" type="text/css" />
        <script src="js/modernizr.custom.js"></script>
        <script type="text/javascript">
function validation()  
{  
	var name=/^[A-Za-z ]{1,20}$/;
   var numbers = /^[0-9]{10}$/;  
   var email=/^[a-zA-Z0-9._-]+@([a-zA-Z0-9.-]+\.)+[a-zA-Z0-9.-]+$/;
   if( !document.form.phone_no.value.match(numbers))  
   {  
   alert('Phone no should be 10 digit number only');  
   return false;    
   }
   
   else if( !document.form.email_id.value.match(email))  
   {  
   alert('Enter valid email id....');  
   return false;    
   }  
   else if(!document.form.student_name.value.match(name)){
	   alert('Name should be not more than 20 letters');
	   return false;
   }
   else if(!document.form.father_name.value.match(name)){
	   alert('Name should be not more than 20 letters');
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
			<div style="margin-top: 0.2%;">
            	<form action="AddNewStudent" method="post" name="form" class="bootstrap-frm" onsubmit="return validation();">
    <h1>Student Registration Form 
        <span>Enter Complete Student Details.</span>
    </h1>
    <label>
        <span>Name :</span>
        <input type="text" name="student_name" placeholder="enter student's name" required="required"/>
    </label>
    
    <label>
        <span>Father's Name :</span>
        <input type="text" name="father_name" placeholder="enter father's name" required="required"/>
    </label>
    
    <label>
        <span>Email Id :</span>
        <input type="email" name="email_id" placeholder="enter email id" required="required"/>
    </label>
    
    <label>
        <span>Gender :</span><select name="gender">
        <option value=" ">Select</option>
        <option value="Male">Male</option>
        <option value="Female">Female</option>
        </select>
    </label>
    
    <label>
        <span>Phone No :</span>
        <input type="text" name="phone_no" placeholder="enter contact no" required="required"/>
    </label>
    
    <label>
        <span>Stream :</span><select name="stream">
        <option value=" ">Select</option>
        <option value="ECE">ECE</option>
        <option value="IT">IT</option>
        <option value="CSE">CSE</option>
        <option value="EE">EE</option>
        <option value="N/A">N/A</option>        
        </select>
    </label>
    
    <label>
        <span>Qualification :</span><select name="qualification">
        <option value=" ">Select</option>
        <option value="B.Tech">B.Tech</option>
        <option value="M.Tech">M.Tech</option>
        <option value="BCA">BCA</option>
        <option value="MCA">MCA</option>
        </select>
    </label>
    
    <label>
        <span>Course :</span><select name="course_id">
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
        <span>Address :</span>
        <textarea name="address" cols="10" rows="5" placeholder="enter complete address" required="required"></textarea>
    </label>
     
     <label>
        <span>&nbsp;</span> 
        <input type="submit" class="button" value="Register"/> 
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