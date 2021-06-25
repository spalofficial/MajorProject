<%-- 
    Document   : awelcome
    Created on : Apr 18, 2018, 9:56:58 AM
    Author     : Souvik Pal
--%>

<<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                <a class="navbar-brand" href="awelcome.jsp">E-HEALTHCARE</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="awelcome.jsp">ADMIN WELCOME</a></li>
                        <li><a href="aprofile.jsp">PROFILE</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown"> MANAGE PATIENT <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="plist.jsp">VIEW PATIENT LIST</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">MANAGE DOCTOR <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="dlist.jsp">VIEW DOCTOR LIST</a></li>
                                <li><a href="verifydoc.jsp">VIEW DOCTOR LIST</a></li>
                                <li><a href="gencommission.jsp">GENERATE COMMISSION</a></li>
                                <li><a href="viewcommissionstats.jsp">VIEW COMMISSION STATUS</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">CHECK FEEDBACK <b class="caret"></b></a> 
                            <ul class="dropdown-menu">                   
                                <li><a href="doctorfeed.jsp">VIEW DOCTORS FEEDBACK</a></li>
                                <li><a href="userfeed.jsp">VIEW PATIENT FEEDBACK</a></li>
                            </ul>
                        </li>
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
                <form class="form-horizontal" action="a" method="post">
                    <fieldset>
                        <legend> SET COMMISSION</legend>
             <div class="form-group">
                            <label class="col-md-4 control-label">APPOINTMENT ID</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input name="appid" value=<% out.println((String)session.getAttribute("app")); %> class="form-control" type="text" disabled>
                                    </div>
                                </div>
            </div>
             <div class="form-group">
                            <label class="col-md-4 control-label">DOCTOR ID</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input name="doctorid" value=<% out.println((String)session.getAttribute("doc")); %> class="form-control" type="text" disabled>
                                    </div>
                                </div>
            </div>
             <div class="form-group">
                            <label class="col-md-4 control-label">COMMISSION PERCENTAGE</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input name="commission" placeholder="(0-100)" class="form-control" type="text">
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
            </div>
            <br><br><br> 
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

