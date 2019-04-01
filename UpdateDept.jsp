<%-- 
    Document   : Removingdept
    Created on : 15 Mar, 2019, 10:52:45 AM
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
        <jsp:include page="sample1.jsp"/>
        <div class="wrap">
<div class="main">
	<div class="contact">
		<div class="section group">				
				<div class="col span_1_of_2">
					
      			
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
				  	<h2 class="style">Update Department</h2>
                                         <%
            
            Dbcon db=new Dbcon();
                 String a=request.getParameter("d");
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tb_dept where dept_id=?");
            ps.setString(1, a);
            ResultSet rs=db.return_data(ps);
            while(rs.next())
            {
                %>
                                        <form name="f1" method="post" action="">
       
                
        <div>
            <span><label>Department ID </label></span> 
            <span><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly="true"></span>
        </div>
        <div>
            <span><label>Department </label></span>
            <span><input type="text" name="t2" value="<%=rs.getString(2)%>"></span>
        </div>  
        <div>
            <span><label>Course </label></span>
            <span><input type="text" name="t3" value="<%=rs.getString(3)%>"></span>
        </div>
         
        <div>
            <span><input type="submit" value="Update" name="b1" ></span>
        </div> 
        <%
            }
        %>
        </form>
        <%
            if(request.getParameter("b1")!=null)
            {
                
                PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update tb_dept set dept=?,course=? where dept_id=?");
               String d=request.getParameter("t1");
                String b=request.getParameter("t2");
               String c=request.getParameter("t3");
                p.setString(1, b);
                 p.setString(2, c);
                  p.setString(3, d);
                  db.execution(p);
                  response.sendRedirect("RemoveDept.jsp");
               
            }
        %>
        
        
     
                                  </div>
                                </div>
                </div>
        </div>
        </div>
        </div>
    </body>
</html>
