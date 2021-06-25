<%-- 
    Document   : uprofile
    Created on : Apr 15, 2018, 12:09:22 AM
    Author     : Souvik Pal
--%>

<%@page import="com.souvik.hitmca2018.dao.UserDao"%>
<%@page import="com.souvik.hitmca2018.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <!--
        <script src=" https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        -->
        <title>HITMCA2018</title>
    </head>
<body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only" >Toggle Navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="uwelcome.jsp">E-HEALTHCARE</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="uwelcome.jsp">USER WELCOME</a></li>
                        <li><a href="uprofile.jsp">PROFILE</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">DOCTOR <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="udoc.jsp"> FIND AND APPOINT DOCTOR</a></li>
                                <li><a href="uappoint.jsp"> VIEW APPOINTMENTS</a></li>
                                <li><a href="uviewreport.jsp"> VIEW REPORTS</a></li>
                            </ul>
                        </li>
                        <li><a href="ufeedback.jsp">FEEDBACK</a></li>
                        <li><a href="logout.jsp">LOGOUT</a></li>
                    </ul> 
                </div>
            </div>
        </nav>
        <div class="jumbotron text-center">
            <h1> WELCOME TO E-HEALTHCARE</h1>
            <p><i>"We provide faster and simpler solution to patient's health issues by bringing health-care system and patient under the same platform"</i></p>
        </div>
        <div class="container">
              <%
                        response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }else{
                        String u=(String)session.getAttribute("userid");
                        UserDao dao=new UserDao();
                        User u1=dao.getUser(u);
                        session.setAttribute("f", u1.getFirstname());
                        session.setAttribute("l", u1.getLastname());
                        session.setAttribute("p", u1.getPhoneno());
                        session.setAttribute("g", u1.getGender());
                        session.setAttribute("d", u1.getDateofbirth());
                        session.setAttribute("b", u1.getBloodgroup());
                        session.setAttribute("cc", u1.getCity());
                        session.setAttribute("s", u1.getState());
                        session.setAttribute("c", u1.getCountry());
                        session.setAttribute("a", (String)u1.getAddress());
                        session.setAttribute("z", u1.getZipcode());
                        session.setAttribute("e", u1.getEmail());
                        }
                    %> 
            <div class="col-lg-9">                
                <form class="form-horizontal" action="uedit" method="post">
                    <fieldset>
                        <legend> Personal Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="firstname" value=<% out.println(session.getAttribute("f")); %> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Last Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="lastname" value=<% out.println((String)session.getAttribute("l")); %> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Phone No</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input  name="phoneno" value=<% out.println((String)session.getAttribute("p")); %> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Date Of Birth</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                        <input  name="dob" value=<% out.println((String)session.getAttribute("d")); %> class="form-control"  type="date">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Gender</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-option-vertical"></i></span>
                                        <select name="gender" value=<% out.println((String)session.getAttribute("g")); %> class="form-control">
                                            <option value="male">Male</option>                                           
                                            <option value="female">Female</option>
                                            <option value="others">Others</option>
                                        </select>
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Blood Group</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-tint"></i></span>
                                        <input name="bloodgroup" value=<% out.println((String)session.getAttribute("b")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Address</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                                        <input name="address" value=<%=(String)session.getAttribute("a")%> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">City</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                        <input name="city" value=<% out.println((String)session.getAttribute("cc")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">State</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                        <input name="state" value=<% out.println((String)session.getAttribute("s")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Country</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                        <input name="country" value=<% out.println((String)session.getAttribute("c")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Zip Code</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="zipcode" value=<% out.println(session.getAttribute("z")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend> Account Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">User ID</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input name="userid" value=<%= (String)session.getAttribute("userid") %> class="form-control" type="text" readOnly>
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" value=<% out.println((String)session.getAttribute("e")); %> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-success btn-lg" >Send <span class="glyphicon glyphicon-send"></span></button>
                                </div>
                                <div class="col-md-4">
                                    <button type="reset" class="btn btn-primary btn-lg" >Reset <span class="glyphicon glyphicon-refresh"></span></button>
                                </div>
                        </div><br><br><br>
                    </fieldset>
                </form>
            </div>
        </div>
        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container-fluid">
                <div class="navbar-text">
                    <p>&COPY; Souvik Pal 2018</p>
                </div>
            </div>
        </div>
        </body>
</html>