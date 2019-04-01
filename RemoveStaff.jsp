<%-- 
    Document   : RemovingStaff
    Created on : 21 Mar, 2019, 11:54:38 AM
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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("delete from tb_staff where staffmem_id=?");
           String a=request.getParameter("d");
           ps.setString(1, a);
           db.execution(ps);
           response.sendRedirect("RemoveStaff.jsp");
       %>
    </body>
</html>
