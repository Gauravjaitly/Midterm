
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
             String lect = request.getParameter("class");
        Class.forName("com.mysql.jdbc.Driver");
                System.out.println("driver loaded successfully");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/it635", "root", "123456");
                System.out.println("connection built");
                Statement stmt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
                ResultSet rs = stmt.executeQuery("select * from schedule where class='"+lect+"'");
                if(rs.next())
                {
                    rs.updateString("status", "active");
                    rs.updateRow();
                    out.println("success");
                }
              %>
  