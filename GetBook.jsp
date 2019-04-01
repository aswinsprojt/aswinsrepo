<%-- 
    Document   : GetBook
    Created on : 21 Mar, 2019, 2:50:23 PM
    Author     : aswin
--%>


<%@page import="dbcon.Dbcon"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
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
             String  root=getServletContext().getRealPath("/");
       String d=root+"files";
       MultipartRequest m1=new MultipartRequest(request,d);
       if(m1.getParameter("b2")!=null)
       
       {
        
           String s1=m1.getParameter("t1");
           
           String s2=m1.getParameter("t2");
          
           String s3=m1.getParameter("t3");
           
           String s4=m1.getParameter("s1");
          
           String s5=m1.getParameter("t6");
          
           String s6=m1.getParameter("t7");
          
           String s7=m1.getParameter("t8");
           
           String s8=m1.getParameter("t9");
           
           String s9=m1.getFilesystemName("t10");
          
           PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("insert into tb_book values(?,?,?,?,?,?,?,?,?)");
           ps.setString(1, s1);
           ps.setString(2, s2);
           ps.setString(3, s3);
           ps.setString(4, s4);
           ps.setString(5, s5);
           ps.setString(6, s6);
           ps.setString(7, s7);
           ps.setString(8, s8);
           ps.setString(9, s9);
           db.execution(ps);
           int n=(Integer)session.getAttribute("i");
           PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update bk_id set catid=?");
           p.setInt(1, n);
           db.execution(p);
           response.sendRedirect("AddEbook.jsp");
       }
            
            
            %>
    </body>
</html>
