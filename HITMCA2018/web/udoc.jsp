<%-- 
    Document   : udoc
    Created on : Apr 17, 2018, 12:26:58 PM
    Author     : Souvik Pal
--%>

<%@page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
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
            <div class="col-lg-9">                
                <form class="form-horizontal" action="udoc.jsp" method="post">
                    <fieldset>
                        <legend> Find and Appoint Doctor </legend>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Find By:</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <select name="findby" class="form-control" type="text">
                                            <option value="cliniccity">clinic city</option>
                                            <option value="department">department</option>
                                        </select>                                        
                                    </div>
                                </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-4 control-label">Input:</label>
                                <div class="col-md-6  inputGroupContainer">
                                    <div class="input-group"> <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                        <input name="input" class="form-control" type="text" placeholder="input"></input>                                     
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
            <pre class="col-lg-9">
                <%
                  if(request.getParameter("findby")!=null && request.getParameter("input")!=null){
                      String query=null;
                      int x=0;
                      String findby=request.getParameter("findby");
                      String input=request.getParameter("input");
                      if(findby.equals("cliniccity")){
                          query="select * from doctor where cliniccity='"+input+"' and vstatus='yes'";
                      }else if(findby.equals("department")){
                          query="select * from doctor where department='"+input+"' and vstatus='yes'";
                      }
                      try{
                            Class.forName("oracle.jdbc.driver.OracleDriver");
                            Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
                            Statement st=con.createStatement();
                            ResultSet rs=st.executeQuery(query);
                            out.println("<table border=2><tr><td><b>ID</b></td><td><b>FIRST NAME</b></td><td><b>LAST NAME</b></td><td><b>PHONE NO</b></td><td><b>GENDER</b></td><td><b>DEPARTMENT</b></td><td><b>DEGREE</b></td><td><b>CLINIC CITY</b></td><td><b>FEES</b></td><td><b>EMAIL ID</b></td><td><b>APPOINTMENT LINK</b></td></tr>");
                            while(rs.next()){
                                out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td><td>"+rs.getString(10)+"</td><td><a href=App?id="+rs.getString(1)+">APPOINT</a></td></tr>");
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
        <div class="navbar navbar-inverse navbar-fixed-bottom">
            <div class="container-fluid">
                <div class="navbar-text">
                    <p>&COPY; Souvik Pal 2018</p>
                </div>
            </div>
        </div>
        </body>
</html>