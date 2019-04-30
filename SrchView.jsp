<%-- 
    Document   : SrchView
    Created on : 18 Apr, 2019, 12:31:26 PM
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
    </head>
    <body>
        
        <%
            String bk=request.getParameter("d");
            String pag=request.getParameter("key");
            %>
              <EMBED src="files/<%=bk%>#page=<%=pag%>&toolbar=0" WIDTH="1512" HEIGHT="700">                           
              
            
  
    </body>
</html>
