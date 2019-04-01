<%-- 
    Document   : RemoveStaff
    Created on : 21 Mar, 2019, 11:44:53 AM
    Author     : aswin
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="dbcon.Dbcon"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <title>JSP Page</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="s/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="s/css/util.css">
	<link rel="stylesheet" type="text/css" href="s/css/main.css">
<!--===============================================================================================-->
<style>
    .table100.ver1 th {
        background-color: #ff5171;
    }
    .container-table100{
        align-Items:normal;
    }
</style>
    </head>
    <body>
        <jsp:include page="sample1.jsp" />
        
        <div class="limiter">
           
		<div class="container-table100">
                    
			<div class="wrap-table100">
                            
				<div class="table100 ver1 m-b-110">
                                    
					<div class="table100-head">
                                                <table>
                                                        <thead>					
                                                        		<tr class="row100 head">
									<th class="cell100 column1">Membership Id</th>
									<th class="cell100 column2">Name</th>
									<th class="cell100 column3">Department </th>	
                                                                        <th class="cell100 column3">Job</th>
                                                                        <th class="cell100 column3">Update</th>
                                                                        <th class="cell100 column3">Remove</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
                                            <table>
							<tbody>
                                                            <%
                                                                Dbcon db=new Dbcon();
                                                                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tb_staff");
                                                                ResultSet rs=db.return_data(ps);
                                                                while(rs.next())
                                                                {
                                                                    %>
                                                                   
								<tr class="row100 body">
                                                                    <td class="cell100 column1"><%=rs.getString(1)%></td>
									<td class="cell100 column2"><%=rs.getString(2)%></td>
									<td class="cell100 column3"><%=rs.getString(3)%></td>
                                                                        <td class="cell100 column3"><%=rs.getString(4)%></td>
                                                                        <td class="cell100 column4"><a href="UpdateStaff.jsp?d=<%=rs.getString(1)%>">Update</a></td>
                                                                        <td class="cell100 column5"><a href="RemoveStaff.jsp?d=<%=rs.getString(1)%>">Remove</a></td>
								</tr>
                                                                 <%
                                                                }
                                                            %>
                                                        </tbody>
                                            </table>
                                           
						
                                        
                                        </div>
                                </div>
                        </div>
                </div>
        </div>
    </body>
</html>
