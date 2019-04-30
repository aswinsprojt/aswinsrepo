<%-- 
    Document   : SearchBook
    Created on : 30 Mar, 2019, 12:20:15 PM
    Author     : aswin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="dbcon.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
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

        xmlhttp.open("GET", "GetCatVal.jsp?a="+str, true);
        xmlhttp.send(); 
            }
            function titl()
            {
                
                var x1=document.getElementById("first");
                x1.style.display='none';
                 var x2=document.getElementById("secnd");
                x2.style.display='none';
                var x=document.getElementById("third");
                x.style.display='block';
            }
            function auth()
            {
                
                var x1=document.getElementById("first");
                x1.style.display='block';
                 var x2=document.getElementById("secnd");
                x2.style.display='none';
                var x=document.getElementById("third");
                x.style.display='none';
            }
            function cat()
            {
                
                var x1=document.getElementById("first");
                x1.style.display='none';
                 var x2=document.getElementById("secnd");
                x2.style.display='block';
                var x=document.getElementById("third");
                x.style.display='none';
            }
        </script>
    </head>
    <body onload="">
        <jsp:include page="sample1.jsp"/>
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
				  	<h2 class="style">Search Book</h2>
        <form name="f1" method="post" action="">  
            <input type="button" value="Author" name="b1" onclick="auth();">
                <input type="button" value="Title" name="b2" onclick="titl();">
                <input type="button" value="Category" name="b3" onclick="cat();">
                
            <div id="first">
                
                <span><label>Author</label></span>
                <span><input type="text" name="t1"></span>
                <input type="submit" value="Search" name="bt1">
               
                
            </div>
            <div id="third" style="display:none;">
                <span><label>Title</label></span>
                <span><input type="text" name="t2"></span>
                <input type="submit" value="Search" name="bt2">
               
            </div>
            <div id="secnd" style="display:none;">
                <span>Category</span>
                <span>
                    <select name="s1" onchange="getVal(this.value);">
                        <option value="--Select--">--Select--</option>
            <%
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select catgry from tb_category");
            ResultSet rs=db.return_data(ps);
            while(rs.next())
            {
                %>                
                <option value="<%=rs.getString(1)%>"><%=rs.getString(1)%></option>
                <%
            }
            %>
            </select>
            </span>
            <div id="myDiv"></div>
            <span><input type="submit" value="Search" name="bt3"></span>
            </div>
        
                
            
        </form>
          <%
                   if(request.getParameter("bt1")!=null)
                  {
                      String s1=request.getParameter("t1");
                      session.setAttribute("ss", s1);
                       response.sendRedirect("BookByAthr.jsp");
                  }
                   if(request.getParameter("bt2")!=null)
                  {
                      String s1=request.getParameter("t2");
                      session.setAttribute("ww", s1);
                       response.sendRedirect("BookByTitl.jsp");
                  }
                   if(request.getParameter("bt3")!=null)
                  {
                      String s1=request.getParameter("s1");
                      String s2=request.getParameter("s2");
                      session.setAttribute("aa", s1);
                       session.setAttribute("bb", s2);
                       response.sendRedirect("BookByTitl.jsp");
                  }
                   
               %> 
            
                                  </div>
                                </div>
                </div>
        </div>
</div>
</div>
        </div>
    </body>
</html>
