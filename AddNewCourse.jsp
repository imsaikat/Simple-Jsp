<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="Back.jsp" %>
<!DOCTYPE HTML>
<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
		<title>Add New Course</title>
		
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
	var name=/^[A-Za-z0-9 ]{1,20}$/;
   var number1 = /^[0-9]{2,3}$/; 
   var number2 = /^[0-9]{1,2}$/; 
   if( !document.form.capacity.value.match(number1))  
   {  
   alert('Capacity should be 2-3 digit number only');  
   return false;    
   }  
   
   
   else if(!document.form.duration.value.match(number2)){
	   alert('Duration should be 2 digit number only');  
	   return false;
   }
   else if(!document.form.course_name.value.match(name)){
	   alert('Course Name should max 20');  
	   return false;
   }
   
}   



</script>
<script language="JavaScript" type="text/javascript">
window.history.forward(1);
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
			<div style="margin-top: 5%;">
            	<form action="AddNewCourse" method="post" name="form" class="bootstrap-frm" onsubmit="return validation();">
    <h1>Add New Course 
        <span>Enter Course Details.</span>
    </h1>
    <label>
        <span>Course<br/> Name :</span>
        <input type="text" name="course_name" placeholder="enter course name" required="required"/>
    </label>
    
    <label>
        <span>Duration :</span>
        <input type="text" name="duration" placeholder="enter course duration" required="required"/>
    </label>
    
    <label>
        <span>Schedule :</span><select name="schedule" required="required">
        <option value=" ">Select</option>
        <option value="Morning">Morning</option>
        <option value="Afternoon">Afternoon</option>
        <option value="Evening">Evening</option>
        </select>
    </label>
    
    <label>
        <span>Start Date :</span>
        <input type="date" name="start_date" required="required"/>
    </label>
    
    <label>
        <span>End Date :</span>
        <input type="date" name="end_date" required="required"/>
    </label>
    
    <label>
        <span>Capacity :</span>
        <input type="text" name="capacity" placeholder="enter capacity" required="required"/>
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