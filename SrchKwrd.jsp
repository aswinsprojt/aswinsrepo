<%-- 
    Document   : SrchKwrd
    Created on : 10 Apr, 2019, 1:24:55 PM
    Author     : aswin
--%>

<%@page import="java.io.File"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="com.asprise.util.pdf.PDFReader"%>
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
        <div class="main_btm">
<div class="wrap">
<div class="main">
	<div class="contact">
		<div class="section group">				
				<div class="col span_1_of_2">
					
      			
				   <div class="clear"></div>
				</div>				
				<div class="col span_2_of_4">
				  <div class="contact-form">
                                      <form method="post" action="">
            <div align="center">
            <h2>Enter text</h2>
            <div>
                <span><input type="text" name="t1"></span>
                <span><input type="submit" name="b1"></span>
            </div>
            
                   </div>
        </form>
                                      <%
                                           if(request.getParameter("b1")!=null)
                  {
                       int flag=0;
             int page1=0;
            Dbcon db=new Dbcon();
            String jk=request.getParameter("d");
            PreparedStatement ps=(PreparedStatement)db.cn.prepareStatement("select book from tb_book where isbn=?");
            ps.setString(1,jk);
            ResultSet rs=db.return_data(ps);
            if(rs.next())
                {
                String bk=rs.getString(1);
                
            
    PDFReader reader = new PDFReader(new File("D:/project/Project/build/web/files/"+bk));
                
            reader.open();
            int pages = reader.getNumberOfPages(); 
            for(int i=0; i < pages; i++) 
            {
                
                String text = reader.extractTextFromPage(i);
                //out.println("Page " + i + ": " + text);
          
                StringTokenizer st=new StringTokenizer(text," ");
                while (st.hasMoreTokens()) 
                { 
                   
                    if(st.nextElement().equals(request.getParameter("t1")))
                    {
                       flag=1;
                       page1=i;
                       break;
                    }                
                }
            }
            
            if(flag==1)
            {
                %>
                <div>
                <%
                out.println("Text Found at page "+page1+"\n");
                %>
                </div>
                <div>
                <a href="SrchView.jsp?d=<%=bk%>&key=<%=page1%>">View</a>
                </div>
                <%
                 String ftxt=reader.extractTextFromPage(page1);
               // out.println("\n"+ftxt);
            }
            else
                out.println("Text not found...");
         
        
                }
                  }
                                      %>
                                  </div>
                                </div></div></div></div></div></div>
    </body>
</html>
