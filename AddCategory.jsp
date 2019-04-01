<%-- 
    Document   : AddCategory
    Created on : 5 Mar, 2019, 1:03:20 PM
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
        
        <form method="post" action="GetCategory.jsp">
            <%
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select catid from tb_id");
            ResultSet rs=db.return_data(ps);
            int n=0,n1=0;
            String n2;
            if(rs.next())
            {
               n=rs.getInt(1);
              
            }
              n1=n+1;
              session.setAttribute("i",n1);
              n2="CATOBK"+n1;
            
        %>
            <table align="center">
                <thead>
                    <tr><th colspan="2">Add Category</th></tr>
                </thead>
                <tbody>
                    <tr>
                        <th>Category ID </th>
                        <th><input type="text" name="t1" value="<%=n2%>" readonly="true"></th>
                    </tr>  
                    <tr>
                        <th>Category </th>
                        <th><input type="text" name="t2"></th>
                    </tr>  
                    <tr>
                        <th>Subject </th>
                        <th><input type="text" name="t3"></th>
                    </tr>  
                    <tr>
                        <th colspan="2"><input type="submit" value="Save"</th>                       
                    </tr>  
                </tbody>
            </table>
        </form>
    </body>
</html>
