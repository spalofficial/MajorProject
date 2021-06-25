<%-- 
    Document   : aprofile
    Created on : Apr 18, 2018, 10:05:58 AM
    Author     : Souvik Pal
--%>


<%@page import="com.souvik.hitmca2018.dao.AdminsDao"%>
<%@page import="com.souvik.hitmca2018.model.Admins"%>
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
                                <li><a href="verifydoc.jsp">VERIFY DOCTOR LIST</a></li>
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
            <div class="row">
                <div class="col-md-12">
                    <h1><%out.println("ADMIN PROFILE");%></h1><br>
                    <pre><h3>
                    <%
                        response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }else{
                        String u=(String)session.getAttribute("userid");
                        AdminsDao dao=new AdminsDao();
                        Admins u1=dao.getAdmins(u);
                        out.println();
                        out.println("AdminId:"+u1.getAdminid());
                        out.println("FirstName :"+u1.getFirstname());
                        out.println("LastName :"+u1.getLastname());
                        out.println("PhoneNo :"+u1.getPhoneno());
                        out.println("Gender :"+u1.getGender());
                        out.println("Email Id :"+u1.getEmail());
                        out.println("<a class=btn-danger href=aedit.jsp>EDIT</a>");
                        }
                    %>  
                    <h3></pre>
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
