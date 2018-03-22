<%@page import="java.sql.*"%>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    try {
        String connectionURL = "jdbc:mysql://localhost:3306/it635";
        Connection connection = null; 
        Class.forName("com.mysql.jdbc.Driver").newInstance(); 
        connection = DriverManager.getConnection(connectionURL, "root", "123456");
        if(!connection.isClosed()){
        	Statement stmt = connection.createStatement();
        ResultSet rs = stmt.executeQuery("select * from usersignup where username='" + username + "'");
        if (rs.next())
        {
        response.sendRedirect("usersignup.jsp?msg=User Already exists");
    }
    else
    {
        rs.moveToInsertRow();
        rs.updateString("username", username);
        rs.updateString("password", password);
        rs.updateString("name", name);
        rs.updateString("address", address);
        rs.updateString("phone", phone);
        rs.updateString("email", email);
        rs.insertRow();
        response.sendRedirect("userlogin.jsp?msg=Sign up successfull");
    }
        }
        connection.close();
        }catch(Exception ex){
            out.println("Unable to connect to database.");
        }
%>

