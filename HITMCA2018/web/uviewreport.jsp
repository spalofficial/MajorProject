<%-- 
    Document   : uprofile
    Created on : Apr 15, 2018, 12:09:22 AM
    Author     : Souvik Pal
--%>

<%@page import="java.sql.*"%>
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
            <h1> Reports Generated</h1>
            <pre class="col-lg-9">
               <%
                  if(session.getAttribute("userid")!=null){
                      int x=0;
                      String uid=(String)session.getAttribute("userid");
                      try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
                            Statement st=con.createStatement();
                            String query="Select * from report where userid='"+uid+"'";
                            ResultSet rs=st.executeQuery(query);
                            out.println("<table border=2><tr><td><b>APPOINTMENT ID</b></td><td><b>USER ID</b></td><td><b>DOCTOR ID</b></td><td><b>DISEASE</b></td><td><b>DESCRIPTION</b></td><td><b>MEDICATION</b></td><td><b>DATE OF REPORT GENERATION</b></td></tr>");
                            while(rs.next()){
                                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
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
                </pre><br><br><br>
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