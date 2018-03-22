
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body style="background-image: url('Cars/g1.jpg');background-size: cover">
        <%@include file="public_header.jsp" %>

        <div class="container">
            <div class="col-sm-8 col-sm-offset-2 ">
                         <br>
                         <br>
                         <br>
                         <br>
            <div class="jumbotron">

                <h1 style="font-family: 'Merienda One'"> Admin Login </h1>
            

            <div class="row">
                <form action="check_admin_login.jsp" method="post">
                  
                        <div class="form-group">
                            <label>Username&nbsp;</label> 
                            <input type="text" name="username" class="form-control" required/><br>
                        </div>
                        <div class="form-group">
                            <label>password&nbsp;</label>
                            <input type="password" name="password" class="form-control" required/><br>
                        </div>
                        <div class="form-group col-sm-4 col-sm-offset-4">
                            <input type="Submit" value="Login" style="background-color:#FCB941; font-family: 'Merienda One'" class="btn btn-block"/><br>
                        </div>
                        <a href="forget_password.jsp">Forget password</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <%
                            String msg = request.getParameter("msg");
                            if (msg != null)
                            {
                        %>
                        <label class="label label-danger">**<%= msg%></label>
                        <%
                            }

                        %>

                   
                </form>
            </div>
            </div>
        </div>
        </div>
                        <br>
                        <br>
                        <br>
        <%@include file="footer.jsp"%>    
    </body>
</html>
