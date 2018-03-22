<%-- 
    Document   : login2
    Created on : Mar 22, 2017, 9:50:02 PM
    Author     : Class-Room
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>check_user_login</title>
    </head>
    <body>
        <%
            String username = request.getParameter("user");
            String password =request.getParameter("user");

            try {
                String connectionURL = "jdbc:mysql://localhost:3306/it635";
                Connection connection = null; 
                Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                connection = DriverManager.getConnection(connectionURL, "root", "123456");
                if(!connection.isClosed()){
                	Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("select * from adminlogin where username='" + username + "' and password='" + password + "'");
                if (rs.next()) 
                {

                    response.sendRedirect("userlogin.jsp?msg=success");
                } 
                else
                {

            response.sendRedirect("userlogin.jsp?msg=Invalid username or password");
                }
                }
                connection.close();
            }catch(Exception ex){
                out.println("Unable to connect to database.");
            }



        %>



    </body>
</html>
