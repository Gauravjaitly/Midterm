

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User login</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body style="background-image: url('Cars/g1.jpg');background-size: cover" >
        <%@include file="public_header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="form-group">


                    <div class="col-sm-8 col-sm-offset-2 ">
                        <br>
                        <br>
                        <br>
                        <br>


                        <div class="jumbotron"> <h1 style="font-family: 'Merienda One'">User Login</h1>
                            <form action="check_user_login.jsp" method="post">

                                <label>Username</label> 
                                <input type="text" name="username" class="form-control" required/><br>
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" required/><br>

                                <div class="col-sm-4 col-sm-offset-4">
                                    <input class="  btn btn-block" style="background-color:#FCB941; font-family: 'Merienda One'" type="submit" value="Login"/><br>

                                </div>
                                <a href="forget_ password.jsp">Forget password</a>
  <br>
                                <%
                                    String msg = request.getParameter("msg");
                                    if (msg != null)
                                    {
                                %>
                                <br>  
                                <br>
                                <label class="label-danger">**<%= msg%></label>
                                <%
                                    }

                                %>

                            </form>
                            <br>

                        </div>
                    </div>




                </div>
            </div>
        </div>
        <br>
        <br>
        <br>
        <br>
        <%@include file="footer.jsp"%>        
    </body>
</html>
