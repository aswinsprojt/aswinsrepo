<%-- 
    Document   : RemovingDept
    Created on : 15 Mar, 2019, 11:59:57 AM
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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("delete from tb_dept where dept_id=?");
           String a=request.getParameter("d");
           ps.setString(1, a);
           db.execution(ps);
           response.sendRedirect("RemoveDept.jsp");
       %>
    </body>
</html>
