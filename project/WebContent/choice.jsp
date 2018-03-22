
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body style="background-image: url('images/test1.jpg');background-size: cover">
        <%@include file="public_header.jsp" %>
        <div class="container">


            <div class="row">
                <center>
                  <h1 style="font-family: 'Merienda One'">ADMIN DASHBOARD</h1>
                  </center>
                
                
                <div class="col-sm-6 col-sm-offset-3 ">
                     <br>
                    <br>
                    <br>
                    <br>
                   
                    
                      <div class="form-group"> 
                        <a href="editschedule.jsp"  style="background-color:#FCB941; font-family: 'Merienda One'; color: black"  class="btn  btn-lg btn-block " role="button">EDIT SCHEDULE</a>
                      </div><br>
                      <div class="form-group"> 
                        <a href="Admin_dashboard.jsp"  style="background-color:#FCB941; font-family: 'Merienda One'; color: black"  class="btn  btn-lg btn-block " role="button">Add classes</a>
                      </div><br>
                     
                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
              
    </body>
</html>
