<%-- 
    Document   : GetCategory
    Created on : 5 Mar, 2019, 1:08:14 PM
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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tb_category values(?,?,?)");
           String s1=request.getParameter("t1");
           String s2=request.getParameter("t2");
           String s3=request.getParameter("t3");
           ps.setString(1, s1);
           ps.setString(2, s2);
           ps.setString(3, s3);
           db.execution(ps);
           int n=(Integer)session.getAttribute("i");
           PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update tb_id set catid=?");
           p.setInt(1, n);
           db.execution(p);
           response.sendRedirect("AddCategory.jsp");
       %>
    </body>
</html>
