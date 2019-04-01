<%-- 
    Document   : AddEbook
    Created on : 21 Mar, 2019, 11:55:55 AM
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
            select{
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
        </style>
    <title>Digital Book</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
    function valid()
    {
        if(!isNaN(f1.t6.value))
        {
            alert("Author name should be in character..");
            f1.t6.focus();
        }
        if(f1.s1.value=="--Select--")
        {
            alert("Select Category Id..");
            f1.s1.focus();
        }
        return true;
    }
    function getVal(str)
    {
        var xmlhttp;
        
        
        if (window.XMLHttpRequest)
        {
            xmlhttp=new XMLHttpRequest();
        }
        else
        {
            xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange=function()
        {
            if (xmlhttp.readyState==4 && xmlhttp.status==200)
            {
                document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
            }
        }

        xmlhttp.open("GET", "getValue.jsp?a="+str, true);
        xmlhttp.send();
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
     <form method="post" name="f1" action="GetBook.jsp" enctype="multipart/form-data">
            <%
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select bk_id from tb_id");
            ResultSet rs=db.return_data(ps);
            int n=0,n1=0;
            String n2;
            if(rs.next())
            {
               n=rs.getInt(1);
              
            }
              n1=n+1;
              session.setAttribute("i",n1);
              n2="STDREG"+n1;
            
        %>
        <div>
            <span><label>Book ID </label></span> 
            <span><input type="text" name="t1" value="<%=n2%>" readonly="true"></span>
        </div>
         <div>
            <span><label>ISBN </label></span>
            <span><input type="text" name="t2" required></span>
        </div>
        <div>
            <span><label>Title </label></span>
            <span><input type="text" name="t3" required></span>
        </div>
        <div>
            <span><label>Category ID </label></span>
            <span>
                <select  name="s1" onChange="getVal(this.value);">
                                <option value="--Select--">--Select--</option>
                                <%
                                    PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("select catid from tb_category");
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
                         <div id="myDiv"> 
                            
                         </div>
                            
                            <div>
                                <span><label>Author</label></span>
                                <span><input type="text" name="t6" required></span>
                            </div>
                            <div>
                                <span><label>Publisher</label></span>
                                <span><input type="text" name="t7" required></span>
                            </div> 
                            <div>
                                <span><label>Version</label></span>
                                <span><input type="text" name="t8" required></span>
                            </div> 
                            <div>
                                <span><label>Year</label></span>
                                <span><input type="text" name="t9" required></span>
                            </div> 
                            <div>
                                <span><label>Book</label></span>
                                <span><input type="file" name="t10" required></span>
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
