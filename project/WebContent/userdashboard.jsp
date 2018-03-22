
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <title>user dashboard</title>
    
        
        
    </head>
    
    <body  style="background-image: url('images/bg.jpg')">
        <%@include file="public_header.jsp" %>
        <div class="container">
            

                <h1 style="font-family: 'Merienda One'; font-size: 70px; margin-left: 25%"> View schedule</h1>
           

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
  <h1 style="font-family: 'Merienda One'">PENDING MERCHANTS</h1>
  <table style="width:50%" border="2" class="table table-hover">
  <tr>
    <th>class</th>
    <th>name</th>
    <th>time</th>
    <th>instructor</th>
    <th>registrationlimit</th>
    <th>room</th>
    <th>courseoffering</th>
    
  </tr>
   
    <%
    String connectionURL = "jdbc:mysql://localhost:3306/it635";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    Connection conn = DriverManager.getConnection(connectionURL, "root", "123456");
      Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from schedule");
        
     while (rs.next()) {
                                    String lect = rs.getString("class");                                   
                                    String name = rs.getString("name");
                                    String time = rs.getString("time");
                                    String instructor = rs.getString("instructor");
                                    String registrationlimit = rs.getString("registrationlimit");
                                    String room = rs.getString("room");
                                    String courseoffering = rs.getString("courseoffering");
                                     if(!rs.getString("status").equals("active"))
                                     {
                                         
                                     
                            %>
                           
                             <tr>
                                <td><%= lect%></td>                             
                                <td><%= name%></td>
                                <td><%= time%></td>
                                <td><%= instructor%></td>
                                <td><%= registrationlimit%></td>
                                <td><%= room%></td>
                                <td><%= courseoffering%></td>
                                <td><input style=" font-family: 'Merienda One'"   class ="btn btn-group btn-success" type="submit" value="register" onclick="go(this.id)" id=<%= lect%> /></td>
                                
                                 </tr>
                                 
                               <%
                                   }
                               }
                               %>
  </table>
  
                </div>
                </div>
                </div>
                                <%@include file="footer.jsp"%>    
                </body>
</html>
