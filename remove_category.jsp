<%-- 
    Document   : remove_category
    Created on : 7 Mar, 2019, 3:55:20 PM
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
                        PreparedStatement p1=(PreparedStatement)db.cn.prepareStatement("delete from tb_category where catid=?");
                        String n=(String)session.getAttribute("a1");
                        p1.setString(1, n);
                        db.execution(p1);
                    response.sendRedirect("RemoveCategory.jsp");
            
            %>
    </body>
</html>
