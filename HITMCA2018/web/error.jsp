<%-- 
    Document   : error
    Created on : Apr 14, 2018, 6:38:36 PM
    Author     : Souvik Pal
--%>

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
                <a class="navbar-brand" href="/HITMCA2018/">E-HEALTHCARE</a>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="/HITMCA2018/">HOME</a></li>
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
                            <a href="#" class="dropdown-toggle"  data-toggle="dropdown">LOG IN <b class="caret"></b></a> 
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
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <h2>Error</h2>
                    <p>
                    <%
                        String s1=(String)session.getAttribute("message");
                        session.removeAttribute("usertype");
                        session.removeAttribute("user");
                        session.removeAttribute("message");
                        out.println(s1);
                    %>    
                    </p>           
                </div>
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