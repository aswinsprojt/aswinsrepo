<%-- 
    Document   : getVal
    Created on : 12 Mar, 2019, 11:46:13 AM
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
            String a=request.getParameter("a");
            Dbcon db=new Dbcon();
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tb_dept where dept_id=?");
            ps.setString(1, a);
            ResultSet rs=db.return_data(ps);
            String dp="",cr="";
            if(rs.next())
            {
                dp=rs.getString(2);
                
                cr=rs.getString(3);
             
            }
        %>
        <div>
                                <span><label>Department</label></span>
                                <span><input type="text" name="t3" value="<%=dp%>" readonly="true"></span>
                            </div>
                            <div>
                                <span><label>Course</label></span>
                                <span><input type="text" name="t4" value="<%=cr%>" readonly="true"></span>
                            </div>
    </body>
</html>
