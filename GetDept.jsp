<%-- 
    Document   : GetDept
    Created on : 8 Mar, 2019, 11:59:33 AM
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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tb_dept values(?,?,?)");
           String s1=request.getParameter("t1");
           String s2=request.getParameter("t2");
           String s3=request.getParameter("t3");
           ps.setString(1, s1);
           ps.setString(2, s2);
           ps.setString(3, s3);
           db.execution(ps);
           int n=(Integer)session.getAttribute("i");
           PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update tb_id set dept_id=?");
           p.setInt(1, n);
           db.execution(p);
           response.sendRedirect("AddDept.jsp");
       %>
    </body>
</html>
