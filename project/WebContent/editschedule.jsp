<%-- 
    Document   : view_merchant
    Created on : Apr 8, 2017, 12:01:36 PM
    Author     : VMM-108
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
       
        <title>View merchant</title>
    
        <script>
            var xml;
            function go(name)
            {
                xml = new XMLHttpRequest();
                xml.onreadystatechange = go2;
                xml.open("get","status.jsp?username="+name,true);
                xml.send();
            }
            
            function go2()
            {
                if(xml.readyState==4 && xml.status==200)
                {
                    window.location.reload();
                    document.getElementById('l1').innerHTML = xml.responseText;
                }
            }
             var xml;
            function go4(name)
            {
                xml = new XMLHttpRequest();
                xml.onreadystatechange = go5;
                xml.open("get","status_pending.jsp?username="+name,true);
                xml.send();
            }
            
            function go5()
            {
                if(xml.readyState==4 && xml.status==200)
                {
                    window.location.reload();
                    document.getElementById('l1').innerHTML = xml.responseText;
                }
            }
            
            
            
        </script>
        
    </head>
    
    <body  style="background-image: url('images/bg.jpg')">
        <%@include file="public_header.jsp" %>
        <div class="container">
            

                <h1 style="font-family: 'Merienda One'; font-size: 70px; margin-left: 25%"> View Merchants</h1>
           

            <div class="row">
                <div class="col-sm-8 col-sm-offset-2">
  <h1 style="font-family: 'Merienda One'">PENDING MERCHANTS</h1>
  <table style="width:50%" border="2" class="table table-hover">
  <tr>
    
  
    <th>class</th>    
    <th>time</th>
    <th>instructor</th>
    <th>registrationlimit</th>
    <th>room</th>
    <th>courseoffering</th>
    <th>Activate</th>
    
  </tr>
   
    <%
    String connectionURL = "jdbc:mysql://localhost:3306/it635";
    Connection connection = null; 
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    connection = DriverManager.getConnection(connectionURL, "root", "123456");
 	Statement stmt = connection.createStatement();
                ResultSet rs = stmt.executeQuery("select * from schedule");
        
     while (rs.next()) {
                                    String lect = rs.getString("class");                                  
                                    String time = rs.getString("time");
                                    String instructor = rs.getString("instructor");
                                    String registrationlimit = rs.getString("registrationlimit");
                                    String room = rs.getString("room");
                                    String courseoffering = rs.getString("courseoffering");
                                     if(rs.getString("status") != null && rs.getString("status").equals("active"))
                                     {
                                    out.println("<tr>");   
                                    out.println("<td>" + lect + "</td>");   
                                    out.println("<td>" + time + "</td>");   
                                    out.println("<td>" + instructor + "</td>");   
                                    out.println("<td>" + registrationlimit + "</td>");   
                                    out.println("<td>" + room + "</td>");
                                    out.println("<td>" + courseoffering + "</td>");   
                                    out.println("<td><input style=\" font-family: 'Merienda One'\"   class =\"btn btn-group btn-success\" type=\"submit\" value=\"Activate\" onclick=\"go(this.id)\" id=" + lect + "/></td>");   
                                    out.println("</tr>");   
                                    }
                               }
                               %>
  </table>
  <h1 style="font-family: 'Merienda One'" >ACTIVE MERCHANTS</h1>
  <table style="width:50%" border="2" class="table table-hover">
  <tr>
    <th>class</th>   
    <th>time</th>
    <th>instructor</th>
    <th>registrationlimit</th>
    <th>room</th>
    <th>courseoffering</th>
    <th>Deactivate</th>
    </tr>
    <%
                ResultSet rs1 = stmt.executeQuery("select * from schedule");
        
     while (rs1.next()) {
                                    String lect = rs1.getString("class");                                  
                                    String time = rs1.getString("time");
                                    String instructor = rs1.getString("instructor");
                                    String registrationlimit = rs1.getString("registrationlimit");
                                    String room = rs1.getString("room");
                                    String courseoffering = rs.getString("courseoffering");
                                     if(rs1.getString("status") != null && rs1.getString("status").equals("active"))
                                     {
                                    	 out.println("<tr>");   
                                         out.println("<td>" + lect + "</td>");   
                                         out.println("<td>" + time + "</td>");   
                                         out.println("<td>" + instructor + "</td>");   
                                         out.println("<td>" + registrationlimit + "</td>");   
                                         out.println("<td>" + room + "</td>");
                                         out.println("<td>" + courseoffering + "</td>");   
                                         out.println("<td><input style=\" font-family: 'Merienda One'\"   class =\"btn btn-group btn-danger\" type=\"submit\" value=\"Deactivate\" onclick=\"go4(this.id)\" id=" + lect + "/></td>");   
                                         out.println("</tr>");   
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
