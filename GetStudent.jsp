<%-- 
    Document   : GetStudent
    Created on : 11 Mar, 2019, 1:30:31 PM
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
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tb_student values(?,?,?,?,?,?,?,?,?)");
           String s1=request.getParameter("t1");
           String s2=request.getParameter("t2");
           String s3=request.getParameter("s1");
           int s4= Integer.parseInt(request.getParameter("t5"));
           String s5=request.getParameter("t6");
           String s6=request.getParameter("t7");
           String s7=request.getParameter("t8");
           String s8=request.getParameter("t9");
           String s9="Ok";
           
           ps.setString(1, s1);
           ps.setString(2, s2);
           ps.setString(3, s3);
           ps.setInt(4, s4);
           ps.setString(5, s5);
           ps.setString(6, s6);
           ps.setString(7, s7);
           ps.setString(8, s8);
           ps.setString(9, s9);
           db.execution(ps);
            PreparedStatement pt=(PreparedStatement)db.cn.prepareStatement("insert into tb_login values(?,?,?)");
           String type="Student";
           pt.setString(1, s8);
           pt.setString(2, s5);
           pt.setString(3, type);
           db.execution(pt);
           int n=(Integer)session.getAttribute("i");
           PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update tb_id set stdmem_id=?");
           p.setInt(1, n);
           db.execution(p);
           response.sendRedirect("AddStudent.jsp");
       %>
    </body>
</html>
