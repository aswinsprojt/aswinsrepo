<%-- 
    Document   : UpdateStd
    Created on : 21 Mar, 2019, 11:16:48 AM
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
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tb_student where stdmem_id=?");
            ps.setString(1, a);
            ResultSet rs=db.return_data(ps);
            while(rs.next())
            {
                %>
                                        <form name="f1" method="post" action="">
       
                
        <div>
            <span><label>Membership ID </label></span> 
            <span><input type="text" name="t1" value="<%=rs.getString(1)%>" readonly="true"></span>
        </div>
        <div>
            <span><label>Name </label></span>
            <span><input type="text" name="t2" value="<%=rs.getString(2)%>" readonly="true"></span>
        </div> 
        <%
            PreparedStatement s=(PreparedStatement)db.cn.prepareStatement("select * from tb_dept where dept_id=?");
            s.setString(1, rs.getString(3));
            ResultSet r=db.return_data(s);
            if(r.next())
            {
                %>
                
        <div>
            <span><label>Department</label></span>
            <span><input type="text" name="t3" value="<%=r.getString(2)%>" readonly="true"></span>
        </div>
        <div>
            <span><label>Course</label></span>
            <span><input type="text" name="t4" value="<%=r.getString(3)%>" readonly="true"></span>
        </div>
         <%
            }
        %>
        <div>
            <span><label>Semester </label></span>
            <span><input type="text" name="t5" value="<%=rs.getString(4)%>" ></span>
        </div> 
        <div>
            <span><label>Phone </label></span>
            <span><input type="text" name="t6" value="<%=rs.getString(5)%>" ></span>
        </div> 
        <div>
            <span><label>Date Of Birth </label></span>
            <span><input type="text" name="t7" value="<%=rs.getString(6)%>" readonly="true"></span>
        </div> 
        <div>
            <span><label>Address </label></span>
            <span><input type="text" name="t8" value="<%=rs.getString(7)%>" ></span>
        </div> 
        <div>
            <span><label>Email </label></span>
            <span><input type="text" name="t9" value="<%=rs.getString(8)%>" ></span>
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
                
                PreparedStatement p=(PreparedStatement)db.cn.prepareStatement("update tb_student set sem=?, phone=? , address=? , email=? where stdmem_id=?");
               String d=request.getParameter("t1");
                String b=request.getParameter("t5");
               String c=request.getParameter("t6");
               String e=request.getParameter("t8");
               String f=request.getParameter("t9");
                p.setString(1, b);
                 p.setString(2, c);
                  p.setString(3, e);
                   p.setString(4, f);
                  p.setString(5, d);
                  db.execution(p);
                  response.sendRedirect("RemoveStd.jsp");
               
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
