<%-- 
    Document   : awelcome
    Created on : Apr 18, 2018, 9:56:58 AM
    Author     : Souvik Pal
--%>

<%@page import="java.sql.*"%>
<<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <div class="row">
                <div class="col-md-12">
                    <h1>
                    <%
                        response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
                        if(session.getAttribute("userid")==null){
                            response.sendRedirect("index.html");
                        }
                        else{
                            try{
                                int x=0;
                                String query="select appid, doctorid from appointment where appid not in (select appid from commission)";
                                Class.forName("oracle.jdbc.driver.OracleDriver");
                                Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
                                Statement st=con.createStatement();
                                ResultSet rs=st.executeQuery(query);
                                out.println("<table border=2><tr><td><b>APPOINTMENT ID</b></td><td><b>DOCTOR ID</b></td><td><b>ACTION</b></td></tr>");
                                while(rs.next()){
                                    out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td><a href=a?id="+rs.getString(1)+"&action=commission&did="+rs.getString(2)+">GENERATE COMMISSION</a></td></tr>");
                                    x++;     
                                }
                                out.println("</table>");
                                if(x==0){
                                out.println("No records availlable");
                                }
                            }
                            catch(Exception e){
                                 throw(e);
                             }
                            }
                    %>    
                    </h1>           
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
