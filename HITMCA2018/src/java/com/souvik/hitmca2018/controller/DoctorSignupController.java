/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.DoctorDao;
import com.souvik.hitmca2018.dao.IdgenDao;
import com.souvik.hitmca2018.model.Doctor;
import com.souvik.hitmca2018.model.Idgen;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class DoctorSignupController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    PrintWriter pw=res.getWriter();
    String userid=(String)req.getParameter("userid");
    String firstname=req.getParameter("firstname");
    String lastname=req.getParameter("lastname");
    String phoneno=req.getParameter("phoneno");
    String gender=req.getParameter("gender");
    String department=req.getParameter("department");
    String degree=req.getParameter("degree");
    String cliniccity=req.getParameter("clinic");
    String fees=req.getParameter("fees");
    String email=req.getParameter("email");
    String password=(String)req.getParameter("password");
    String secques=req.getParameter("secques");
    String answer=req.getParameter("answer");
    String vstatus="no";
    
        Doctor u1=new Doctor(userid,firstname,lastname,phoneno,gender,department,degree,cliniccity,fees,email,password,secques,answer,vstatus);
        DoctorDao dao=new DoctorDao();
        try{
        boolean ans=dao.postDoctor(u1);
        if(ans==false){
        mesg="Doctor Registration Unsuccessful, Please try again";
        }
        else{
        IdgenDao id=new IdgenDao();
        id.updateIdgen("d");    
        mesg="Doctor Registration Successful, Please login with your doctorid and password";
        }
        }
        catch(Exception e){
        mesg= e.toString();           
        }
       HttpSession session= req.getSession();
       session.setAttribute("message", mesg);
       res.sendRedirect("status.jsp");
    }
}
