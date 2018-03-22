<%@page import="java.sql.*"%>

<%
    String lect = request.getParameter("class");
    String time = request.getParameter("time");
    String instructor = request.getParameter("instructor");
    String registrationlimit = request.getParameter("registrationlimit");
    String room = request.getParameter("room");
    String courseoffering = request.getParameter("courseoffering");
    try {
    String connectionURL = "jdbc:mysql://localhost:3306/it635";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    connection = DriverManager.getConnection(connectionURL, "root", "system");
    if(!connection.isClosed()){
    	Statement stmt = connection.createStatement();
    ResultSet rs = stmt.executeQuery("select * from schedule where class='" + lect + "'");
    if (rs.next())
    {
        response.sendRedirect("Admin_dashboard.jsp?msg=this Already exists");
    }
    
    else
    {
        rs.moveToInsertRow();
        rs.updateString("class", lect);
        rs.updateString("time", time);
        rs.updateString("instructor", instructor);
        rs.updateString("registrationlimit", registrationlimit);
        rs.updateString("room", room);
        rs.updateString("courseoffering", courseoffering);
        
        rs.insertRow();
        response.sendRedirect("Admin_dashboard.jsp?msg=update successfull");
    }
    }
    connection.close();
    }catch(Exception ex){
        out.println("Unable to connect to database.");
    }
%>

