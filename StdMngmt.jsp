<%-- 
    Document   : StdMngmt
    Created on : 12 Mar, 2019, 2:35:59 PM
    Author     : aswin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <title>The Public-Library a Educational Category Flat Responsive web template | Contact :: w3layouts</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<style>

.dropbtn {
  background-color: #dddddd;
  color: #555555;
  padding: 16px;
  font-size: 16px;
  border: none;
 
  cursor: pointer;
}

/* The container <div> - needed to position the dropdown content */
.dropdown {
  position: relative;
  display: inline-block;
}

/* Dropdown Content (Hidden by Default) */
.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

/* Links inside the dropdown */
.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

/* Change color of dropdown links on hover */
.dropdown-content a:hover {background-color: #f1f1f1}

/* Show the dropdown menu on hover */
.dropdown:hover .dropdown-content {
  display: block;
}

/* Change the background color of the dropdown button when the dropdown content is shown */
.dropdown:hover .dropbtn {
  background-color: #806666a1;
}
</style>
</head>
<body>
<div class="btm_border">
<div class="h_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
		</div>
		<div class="social-icons">
			<ul>
			     <li><a class="facebook" href="#" target="_blank"> </a></li>
			     <li><a class="twitter" href="#" target="_blank"></a></li>
			     <li><a class="googleplus" href="#" target="_blank"></a></li>
			     <li><a class="pinterest" href="#" target="_blank"></a></li>
			     <li><a class="dribbble" href="#" target="_blank"></a></li>
			     <li><a class="vimeo" href="#" target="_blank"></a></li>
		   </ul>
		</div>	
		<div class="clear"></div>
	</div>
	<div class='h_btm'>
		<div class='cssmenu'>
			<ul>
			    <li><a href='Home.jsp'><span>Home</span></a></li>
			    <li><a href='about.html'><span>About</span></a></li>
			    <li><a href='staff.html'><span>Staff</span></a></li>
			    <li class='has-sub'><a href='service.html'><span>Services</span><span></a></li>
			    <li ><a href='contact.jsp.html'><span>Contact</span></a></li>
                            <li class='active' class='last' class='has-sub'>
                                <span>Dropdown</span>
  <div class="sub">
    <a href="#">Link 1</a>
    <a href="#">Link 2</a>
    <a href="#">Link 3</a>
  </div>
</li>
				
			 	<div class="clear"></div>
			 </ul>
	</div>
	<div class="search">
    	<form>
    		<input type="text" value="">
    		<input type="submit" value="">
    	</form>
	</div>
	<div class="clear"></div>
</div>
</div>
</div>
</div>
</body>
</html>
