<%-- 
    Document   : ufeedback
    Created on : Apr 18, 2018, 1:12:46 AM
    Author     : Souvik Pal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <%
          response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
          if(session.getAttribute("userid")==null){
              response.sendRedirect("index.html");
          }
        %>
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
            <div class="col-lg-9">                
                <form class="form-horizontal" action="feedback" method="post">
                    <fieldset>
                        <legend> Personal Information </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">User Type:</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="utype" value=<%out.println((String)session.getAttribute("usertype"));%> class="form-control"  type="text" disabled>
                                    </div>
                                </div>
                        </div>       
                        <div class="form-group">
                            <label class="col-md-4 control-label">User Id:</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input  name="uid" value=<%out.println((String)session.getAttribute("userid"));%> class="form-control"  type="text" disabled>
                                    </div>
                                </div>
                        </div>        
                        <div class="form-group">
                            <label class="col-md-4 control-label">Issues:</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-star"></i></span>
                                        <textarea name="issue" class="form-control" cols="20" rows="4"></textarea>
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