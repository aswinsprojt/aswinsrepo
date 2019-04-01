<%-- 
    Document   : ViewBook
    Created on : 29 Mar, 2019, 11:38:34 AM
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
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <title>JSP Page</title>
        <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="tbdsgn/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tbdsgn/css/util.css">
	<link rel="stylesheet" type="text/css" href="tbdsgn/css/main.css">
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
									<th class="cell100 column1">ISBN</th>
									<th class="cell100 column2">Title</th>
									<th class="cell100 column3">Author</th>	
                                                                        <th class="cell100 column4">Version</th>	
                                                                        <th class="cell100 column5">Publisher</th>
                                                                        <th class="cell100 column6">View</th>
                                                                        <th class="cell100 column7">Remove</th>
								</tr>
							</thead>
						</table>
					</div>

					<div class="table100-body js-pscroll">
                                            <table>
							<tbody>
                                                            <%
                                                                Dbcon db=new Dbcon();
                                                                PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select * from tb_book");
                                                                ResultSet rs=db.return_data(ps);
                                                                while(rs.next())
                                                                {
                                                                    %>
                                                                   
								<tr class="row100 body">
                                                                    <td  class="cell100 column1"><%=rs.getString(2)%></td>
									<td class="cell100 column2"><%=rs.getString(3)%></td>
									<td class="cell100 column3"><%=rs.getString(5)%></td>
                                                                        <td class="cell100 column4"><%=rs.getString(7)%></td>
                                                                        <td class="cell100 column5"><%=rs.getString(6)%></td>
                                                                        <td class="cell100 column6"><a href="ViewingBook.jsp?d=<%=rs.getString(2)%>" target="_blank">View</a></td>
                                                                        <td class="cell100 column7"><a href="RemoveBook">Remove</a></td>
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
