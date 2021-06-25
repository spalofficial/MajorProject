<%-- 
    Document   : dstatus
    Created on : Apr 18, 2018, 2:12:48 AM
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
            <div class="row">
                <div class="col-md-12">
                    <h2>Status</h2>
                    <p>
                    <%  response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }else{
                        if(session.getAttribute("message")==null){
                        response.sendRedirect("dwelcome.jsp");    
                        }else{    
                        String s1=(String)session.getAttribute("message");
                        session.removeAttribute("message");
                        out.println(s1);
                        }
                        }
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
