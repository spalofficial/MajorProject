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
            <div class="row">
                <div class="col-md-12">
                    <h1><%out.println("DOCTOR PROFILE");%></h1><br>
                    <pre><h3>
                    <%
                        response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }else{
                        String u=(String)session.getAttribute("userid");
                        DoctorDao dao=new DoctorDao();
                        Doctor u1=dao.getDoctor(u);
                        out.println();
                        out.println("Userid :"+u1.getDoctorid());
                        out.println("First Name :"+u1.getFirstname());
                        out.println("LastName :"+u1.getLastname());
                        out.println("Phone No :"+u1.getPhoneno());
                        out.println("Gender :"+u1.getGender());
                        out.println("Department :"+u1.getDepartment());
                        out.println("Degree :"+u1.getDegree());
                        out.println("Clinic City :"+u1.getCliniccity());
                        out.println("Fees:"+u1.getFees());
                        out.println("Email :"+u1.getEmail());
                        out.println();
                        out.println("<a class=btn-danger href=dedit.jsp>EDIT</a>");
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