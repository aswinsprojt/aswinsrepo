<%-- 
    Document   : RemovingCat
    Created on : 19 Mar, 2019, 11:26:31 AM
    Author     : aswin
--%>

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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("delete from tb_category where catid=?");
           String a=request.getParameter("d");
           ps.setString(1, a);
           db.execution(ps);
           response.sendRedirect("RemoveCat.jsp");
       %>
    </body>
</html>
