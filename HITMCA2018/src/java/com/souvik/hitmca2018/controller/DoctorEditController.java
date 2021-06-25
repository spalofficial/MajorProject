/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.DoctorDao;
import com.souvik.hitmca2018.model.Doctor;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class DoctorEditController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    PrintWriter pw=res.getWriter();
    String userid=req.getParameter("userid");
    String firstname=req.getParameter("firstname");
    String lastname=req.getParameter("lastname");
    String phoneno=req.getParameter("phoneno");
    String gender=req.getParameter("gender");
    String department=req.getParameter("department");
    String degree=req.getParameter("degree");
    String clinic=req.getParameter("clinic");
    String fees=req.getParameter("fees");
     String email=req.getParameter("email");
        String query="update doctor set firstname='"+firstname+"', lastname='"+lastname+"',phoneno='"+phoneno+"',"
                + " gender='"+gender+"',cliniccity='"+clinic+"',fees='"+fees+"',department='"+department+"', degree='"+degree+"',email='"+email+"' where doctorid='"+userid+"'";
        pw.println(query);
        DoctorDao dao=new DoctorDao();
        try{
        boolean ans=dao.updatedoctorProfile(query);
        if(ans==false){
        mesg="Doctor Profile update Unsuccessful, Please try again";
        }
        else{    
        mesg="Doctor Profile updation Successful";
        }
        }
        catch(Exception e){
        mesg= e.toString();           
        }
       HttpSession session= req.getSession();
                        session.removeAttribute("f");
                        session.removeAttribute("l");
                        session.removeAttribute("p");
                        session.removeAttribute("g");
                        session.removeAttribute("d");
                        session.removeAttribute("de");
                        session.removeAttribute("c");
                        session.removeAttribute("fe");
                        session.removeAttribute("e");
       session.setAttribute("message", mesg);
       res.sendRedirect("dstatus.jsp");
    }
}
