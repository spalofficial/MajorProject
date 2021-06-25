<%-- 
    Document   : dprofile
    Created on : Apr 18, 2018, 2:09:02 AM
    Author     : Souvik Pal
--%>


<%@page import="com.souvik.hitmca2018.dao.DoctorDao"%>
<%@page import="com.souvik.hitmca2018.model.Doctor"%>
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
                <a class="navbar-brand" href="dwelcome.jsp">E-HEALTHCARE</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="dwelcome.jsp">DOCTOR WELCOME</a></li>
                        <li><a href="dprofile.jsp">PROFILE</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">PATIENT <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="dpat.jsp">VIEW APPOINTMENTS</a></li>
                                <li><a href="dreport.jsp">GENERATE REPORT</a></li>
                                <li><a href="dviewreport.jsp">VIEW GENERATED REPORT</a></li>
                            </ul>
                        </li>
                         <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">ADMIN CORNER <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="dcomlist.jsp">VIEW GENERATED COMMISSION LIST</a></li>
                                <li><a href="dcomlistpayed.jsp">VIEW PAYED COMMISSIONS</a></li>
                            </ul>
                        </li>
                        <li><a href="dfeedback.jsp">FEEDBACK</a></li>
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
                        DoctorDao dao=new DoctorDao();
                        Doctor u1=dao.getDoctor(u);
                        session.setAttribute("f", u1.getFirstname());
                        session.setAttribute("l",u1.getLastname());
                        session.setAttribute("p",u1.getPhoneno());
                        session.setAttribute("g",u1.getGender());
                        session.setAttribute("d",u1.getDepartment());
                        session.setAttribute("de",u1.getDegree());
                        session.setAttribute("c",u1.getCliniccity());
                        session.setAttribute("fe",u1.getFees());
                        session.setAttribute("e",u1.getEmail());
                        }
                    %>  
            <div class="col-lg-9">                
                <form class="form-horizontal" action="dedit" method="post">
                    <fieldset>
                        <legend> Personal Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="firstname" value=<% out.println(session.getAttribute("f"));%> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Last Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="lastname" value=<% out.println(session.getAttribute("l"));%> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Phone No</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input  name="phoneno" value=<% out.println(session.getAttribute("p"));%> class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Gender</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-option-vertical"></i></span>
                                        <select name="gender" value=<% out.println(session.getAttribute("g"));%> class="form-control">
                                            <option value="male">Male</option>                                           
                                            <option value="female">Female</option>
                                            <option value="others">Others</option>
                                        </select>
                                    </div>
                                </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend> Professional Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Department</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                                        <input name="department" value=<% out.println(session.getAttribute("d"));%> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Degree</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                                        <input name="degree" value=<% out.println(session.getAttribute("de"));%> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Clinic city</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-piggy-bank"></i></span>
                                        <input name="clinic" value=<% out.println(session.getAttribute("c"));%> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Consultation Fees</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-piggy-bank"></i></span>
                                        <input name="fees" value=<% out.println(session.getAttribute("fe"));%> class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <legend> Account Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Doctor ID</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input name="userid" placeholder="userid"
                                            class="form-control" value=<% out.println(session.getAttribute("userid"));%> type="text" readOnly>
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" value=<% out.println(session.getAttribute("e"));%> class="form-control" type="text">
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