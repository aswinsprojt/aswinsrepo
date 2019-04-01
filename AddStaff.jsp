<%-- 
    Document   : AddStaff
    Created on : 13 Mar, 2019, 10:44:05 AM
    Author     : aswin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="dbcon.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
       .contact-form input[type="email"],.contact-form input[type="text"],.contact-form textarea{
	font-family: Arial, Geneva,Helvetica, sans-serif;
	font-size: 0.8725em;
	color: #575757;
	padding: 8px;
	display: block;
	width: 98%;
	background: #FFFFFF;
	border: 1px solid rgba(184, 184, 184, 0.86);
	outline: none;
	-webkit-appearance: none;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
         }
         .contact-form input[type="date"],.contact-form input[type="number"]{
             font-family: Arial, Geneva,Helvetica, sans-serif;
	font-size: 0.8725em;
	color: #575757;
	padding: 8px;
	display: block;
	width: 49%;
	background: #FFFFFF;
	border: 1px solid rgba(184, 184, 184, 0.86);
	outline: none;
	-webkit-appearance: none;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
         }
         .contact-form select{
        font-family: Arial, Geneva,Helvetica, sans-serif;
	font-size: 0.8725em;
	color: #575757;
	padding: 8px;
	display: block;
	width: 50%;
	background: #FFFFFF;
	border: 1px solid rgba(184, 184, 184, 0.86);
	outline: none;
	-webkit-appearance: none;
	border-radius: 3px;
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	-o-border-radius: 3px;
         }
        </style>
    <title>Digital Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
    function valid()
    {
        if(!isNaN(f1.t2.value))
        {
           //alert("Name will be character format.."); 
           f1.t2.focus();
           out.print("Name will be character format..");
        }
      
        if(f1.t6.value.length!==10)
        {
            alert("Phone should be in 10 digits..");
            f1.t6.focus();
            
        }
        if(f1.s1.value=="--Select--")
        {
            alert("Select Department Id..");
            f1.s1.focus();
        }
        return true;
    }
</script>
</head>
    <body>
        <jsp:include page="sample1.jsp" />
        <div class="main_btm">
<div class="wrap">
<div class="main">
	<div class="contact">
		<div class="section group">				
				<div class="col span_1_of_2">
					
      			
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<h2 class="style">Contact Us</h2>
         <form method="post" name="f1" action="GetStaff.jsp">
        <%
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select staffmem_id from tb_id");
            ResultSet rs=db.return_data(ps);
            int n=0,n1=0;
            String n2;
            if(rs.next())
            {
               n=rs.getInt(1);
              
            }
              n1=n+1;
              session.setAttribute("i",n1);
              n2="STAFFRG"+n1;
            
        %>
        <div>
            <span><label>Membership ID </label></span> 
            <span><input type="text" name="t1" value="<%=n2%>" readonly="true"></span>
        </div>
        <div>
            <span><label>Name </label></span>
            <span><input type="text" name="t2" required ></span>
        </div>
        <div>
            <span><label>Department </label></span>
            <span>
                <select name="s1" required>
                                <option value="--Select--">--Select--</option>
                                <%
                                    PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("select distinct dept from tb_dept");
                                    ResultSet r=db.return_data(p);
                                    while(r.next())
                                    {
                                        %>
                                        <option value="<%=r.getString(1)%>"><%=r.getString(1)%></option>
                                        <%
                                    }
                                %>
                            </select>
            </span>
        </div>
                         
                            
                            <div>
                                <span><label>Job</label></span>
                                <span>
                                    <select name="s2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Teacher">Teacher</option>
                                        <option value="Assistant">Assistant</option>
                                    </select>
                                </span>
                            </div>
                            <div>
                                <span><label>Phone</label></span>
                                <span><input type="number" name="t6" required></span>
                            </div>
                            <div>
                                 <span><label>Date Of Joining</label></span>
                                <span><input type="date" name="t7" required></span>
                            </div> 
                            <div>
                                <span><label>Address</label></span>
                                <span><textarea name="t8" required></textarea></span>
                            </div> 
                            <div>
                                <span><label>Email</label></span>
                                <span><input type="email" name="t9" required></span>
                            </div>
                           
                            <div>                               
                                <span><input type="submit" value="Submit" name="b2" onclick="return valid()"></span>
                            </div>                
        </form>
          </div>
  			</div>		
  			<div class="clear"></div>
		  </div>
	</div>
</div>
</div>
</div>   
    </body>
</html>
