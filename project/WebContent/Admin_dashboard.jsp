

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <title>Admin Dashboard</title>
        
    </head>
    <body style="background-image: url('images/test1.jpg');background-size: cover">
        <%@include file="public_header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="form">
                    <h2 style="font-family: 'Merienda One'">Admin dashboard</h2>
                    <div class="col-sm-8 col-sm-offset-2">
                        <form action="Admin_dashboard2.jsp" method="post">
                            <table>
                                <tr>
                                <label>class</label>
                                <input type="text"class="form-control" name="class" required />
                                </tr>

                                <tr>
                                <label>time</label>
                                <input type="text"class="form-control" name="time"id="time" required />
                                </tr>

                                <tr>
                                <label>instructor</label>
                                <input type="text"class="form-control" name="instructor"id="instructor" required />
                                </tr>


                                <tr>
                                <label>registrationlimit</label>
                                <input type="text"class="form-control" name="registrationlimit" required />
                                </tr>
                                <tr>
                                <label>room</label>
                                <input type="text"class="form-control" name="room" required />
                                </tr>
                                  <tr>
                                <label>Course offering</label>
                                <input type="text"class="form-control" name="courseoffering" required />
                                </tr>
                               <br>

                                <tr>

                                  </tr>


                            </table>
                             </div>
                    <div class="col-sm-4 col-sm-offset-4">
                            <input type="submit" style="background-color:#FCB941; font-family: 'Merienda One'" value="Save" class="btn btn-block " onclick="return validate()"/>
                    </div>
                            <br>
                            <br>
                            <%
                                String msg = request.getParameter("msg");
                                if (msg != null)
                                {
                            %>
                            <label style="color: green"><%= msg%></label>
                            <%
                                }

                            %>
                   
                   



                </div>

            </div>

        </div>
                            <br>
                            <br>
                            <br>
        <%@include file="footer.jsp"%>
    </body>
</html>
