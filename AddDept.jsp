<%-- 
    Document   : AddDept
    Created on : 8 Mar, 2019, 11:42:17 AM
    Author     : aswin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="dbcon.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Digital Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<div class="btm_border">
<div class="h_bg">
<div class="wrap">
	<div class="header">
		<div class="logo">
			<h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
		</div>
		
		<div class="clear"></div>
	</div>
	<div class='h_btm'>
		<div class='cssmenu'>
			<ul>
			    <li><a href='index.html'><span>Home</span></a></li>
			    <li><a href='about.html'><span>About</span></a></li>
			    <li><a href='staff.html'><span>Book</span></a></li>
			    <li class='has-sub'><a href='service.html'><span>Services</span></a></li>
			    <li class='active' class='last'><a href='contact.html'><span>Contact</span></a></li>
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
<!--main-->
<div class="main_btm">
<div class="wrap">
<div class="main">
	<div class="contact">
		
      			
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<h2 class="style">Add Department</h2>
        <form method="post" action="GetDept.jsp">
            <%
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select dept_id from tb_id");
            ResultSet rs=db.return_data(ps);
            int n=0,n1=0;
            String n2;
            if(rs.next())
            {
               n=rs.getInt(1);
              
            }
              n1=n+1;
              session.setAttribute("i",n1);
              n2="DEPTID"+n1;
            
        %>
         <div>
						    	<span><label>Department Id</label></span>
						    	<span><input type="text" name="t1" value="<%=n2%>" readonly="true"></span>
						    </div>
						    <div>
						    	<span><label>Department</label></span>
                                                        <span><input type="text" name="t2" ></span>
						    </div>
						    <div>
						     	<span><label>Course</label></span>
						    	<span><input type="text" name="t3"></span>
						    </div>						    
						   <div>
						   		<span><input type="submit" value="Save"></span>
						  </div>  
        
        </form>
    </body>
</html>
