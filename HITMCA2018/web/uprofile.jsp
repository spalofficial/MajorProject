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
            <div class="row">
                <div class="col-md-12">
                    <h1><%out.println("USER PROFILE");%></h1><br>
                    <pre><h3>
                    <%
                        response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }else{
                        String u=(String)session.getAttribute("userid");
                        UserDao dao=new UserDao();
                        User u1=dao.getUser(u);
                        out.println();
                        out.println("Userid :"+u1.getUserid());
                        out.println("First Name :"+u1.getFirstname());
                        out.println("LastName :"+u1.getLastname());
                        out.println("PhoneNo :"+u1.getPhoneno());
                        out.println("Gender :"+u1.getGender());
                        out.println("Date Of Birth :"+u1.getDateofbirth());
                        out.println("Blood Group :"+u1.getBloodgroup());
                        out.println("City :"+u1.getCity());
                        out.println("State:"+u1.getState());
                        out.println("Country :"+u1.getCountry());
                        out.println("Address :"+u1.getAddress());
                        out.println("Zip Code :"+u1.getZipcode());
                        out.println("Email Id :"+u1.getEmail());
                        out.println();
                        out.println("<a class=btn-danger href=uedit.jsp>EDIT</a>");
                        }
                    %>     
                    </h3></pre>
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