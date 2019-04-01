<%-- 
    Document   : ViewingBook
    Created on : 29 Mar, 2019, 12:57:48 PM
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
            Dbcon db=new Dbcon();
            String a=request.getParameter("d");
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select book from tb_book where isbn=?");
            ps.setString(1, a);
            ResultSet rs=db.return_data(ps);
            if(rs.next())
            {
               
              String h=rs.getString(1);
              %>
              <EMBED src="files/<%=h%>" WIDTH="1512" HEIGHT="700">                           
              <%                     
            }
            
        %>
    </body>
</html>
