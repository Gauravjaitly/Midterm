<%-- 
    Document   : user_signup
    Created on : Apr 12, 2017, 11:37:07 AM
    Author     : VMM-108
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        
        <title>User signup</title>
        <script type="text/javascript">
            var flag = true;

            function abc()
            {
                var phone = document.getElementById("phone1").value;
                if (phone.length !== 10)
                {
                    alert("Phone number not valid");
                    return false;
                } else
                {
                    return true;
                }


            }
            function go()
            {

                abc();
                if (abc == true)
                {
                    return true;
                }
//                    if(phone.length!=10)
//                    {
//                        alert('Phone number not valid');
//                        return false;
//                    }
//                    else
//                    {
//                        return true; 
//                    }

            }
            function validate()
            {
                var password = document.getElementById('pass').value;
                var cnfpassword = document.getElementById('cnfpass').value;
                if (password != cnfpassword)
                {
                    alert("Passwords do not match");
                    return false;

                }
                return true;
            }





        </script>
    </head>
    <body style="background-image: url('images/test1.jpg');background-size: cover">
        <%@include file="public_header.jsp" %>
        <div class="container">
            <div class="row">
                <div class="form">
                    <h2 style="font-family: 'Merienda One'">User SignUp Form</h2>
                    <div class="col-sm-8 col-sm-offset-2">
                        <form action="user_signup2.jsp" method="post" onsubmit="return abc();">
                            <table>
                                <tr>
                                <label>Username</label>
                                <input type="text"class="form-control" name="username" required />
                                </tr>

                                <tr>
                                <label>Enter password</label>
                                <input type="password"class="form-control" name="password"id="pass" required />
                                </tr>

                                <tr>
                                <label>Confirm password</label>
                                <input type="password"class="form-control" name="password"id="cnfpass" required />
                                </tr>


                                <tr>
                                <label>Name</label>
                                <input type="text"class="form-control" name="name" required />
                                </tr>
                                <tr>
                                <label>Address</label>
                                <input type="text"class="form-control" name="address" required />
                                </tr>
                                <tr>
                                <label>Phone number</label>
                                <input type="text"class="form-control" name="phone"id="phone1" onblur="abc()" required />
                                </tr>
                                <tr>
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" required />
                                </tr>
                                <br>

                                <tr>

                                  </tr>


                            </table>
                             </div>
                    <div class="col-sm-4 col-sm-offset-4">
                            <input type="submit" style="background-color:#FCB941; font-family: 'Merienda One'" value="Sign Up" class="btn btn-block " onclick="return validate()"/>
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
                   
                    </form>



                </div>

            </div>

        </div>
                            <br>
                            <br>
                            <br>
        <%@include file="footer.jsp"%>
    </body>
</html>
