<%-- 
    Document   : dsignup
    Created on : Apr 17, 2018, 9:16:43 AM
    Author     : Souvik Pal
--%>


<%@page import="com.souvik.hitmca2018.model.Idgen"%>
<%@page import="com.souvik.hitmca2018.dao.IdgenDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <script src="js/jquery.js"></script>
        <script src="js/bootstrap.min.js"></script>
  
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
                <a class="navbar-brand" href="/HITMCA2018/">E-HEALTHCARE</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/HITMCA2018">HOME</a></li>
                        <li><a href="services.html">SERVICES</a></li>
                        <li ><a href="aboutus.html">ABOUT US</a></li>            
                        <li><a href="contactus.html">CONTACT US</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">SIGN UP <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="usignup.jsp"> USER SIGN UP</a></li>
                                <li><a href="dsignup.jsp"> DOCTOR SIGN UP</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">SIGN IN <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="usignin.jsp"> USER SIGN IN</a></li>
                                <li><a href="dsignin.jsp"> DOCTOR SIGN IN</a></li>
                                <li><a href="asignin.jsp"> ADMIN SIGN IN</a></li>
                            </ul>
                        </li>
                    </ul> 
                </div>
            </div>
        </nav>
        <div class="jumbotron text-center">
            <h1> WELCOME TO E-HEALTHCARE</h1>
            <p><i>"We provide faster and simpler solution to patient's health issues by bringing health-care system and patient under the same platform"</i></p>
        </div>       
        <div class="container">
            <div class="col-lg-9">                
                <form class="form-horizontal" action="dsignup" method="post">
                    <fieldset>
                        <legend> Personal Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">First Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="firstname" placeholder="First Name" class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                         <div class="form-group">
                            <label class="col-md-4 control-label">Last Name</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="lastname" placeholder="Last Name" class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Phone No</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                                        <input  name="phoneno" placeholder="(+91)-0000000000" class="form-control"  type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Gender</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-option-vertical"></i></span>
                                        <select name="gender" placeholder="select" class="form-control">
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
                                        <input name="department" placeholder="department name" class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Degree</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-education"></i></span>
                                        <input name="degree" placeholder="Latest degree" class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Clinic city</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-piggy-bank"></i></span>
                                        <input name="clinic" placeholder="city" class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Consultation Fees</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-piggy-bank"></i></span>
                                        <input name="fees" placeholder="Fess in digits" class="form-control" type="text">
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
                                        <input name="userid" placeholder="userid" value=
                                            <%
                                            IdgenDao dao=new IdgenDao();
                                            Idgen i=dao.getIdgen("d");
                                            String doctorid=i.getName()+i.getValue();
                                            out.println(doctorid);
                                            %>
                                            class="form-control" type="text" readOnly>
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Email</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="email" placeholder="someone@something.com" class="form-control" type="text">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Password</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input name="password" placeholder="alphanumeric entries" class="form-control" type="password">
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Security Question</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"><span class="input-group-addon"><i class="glyphicon glyphicon-star"></i></span>
                                        <select name="secques" placeholder="select.." class="form-control">
                                            <option value="your pet name">your pet name</option>
                                            <option value="your favorite book">your favorite book</option>
                                            <option value="your favorite singer">your favorite singer</option>
                                        </select>
                                    </div>
                                </div>
                        </div>                        
                        <div class="form-group">
                            <label class="col-md-4 control-label">Answer</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-star"></i></span>
                                        <input name="answer" placeholder="security answer.." class="form-control" type="text">
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

