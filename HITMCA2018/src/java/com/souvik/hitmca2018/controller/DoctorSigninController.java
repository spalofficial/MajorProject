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
public class DoctorSigninController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String user=(String)req.getParameter("userid");
    String pass=(String)req.getParameter("password");
        DoctorDao dao=new DoctorDao();
        HttpSession session= req.getSession();
        try{
        Doctor u1=dao.getDoctor(user); 
        if(u1==null){
            mesg="Login Unsuccessful, Doctorid not registered";
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp"); 
        }
        else{
            if(u1.getPassword().equals(pass)){
                session.setAttribute("userid", user);
                session.setAttribute("usertype", "doctor");
                res.sendRedirect("dwelcome.jsp");
            }
            else{
                mesg="Login Unsuccessful, Password mismatch";
                session.setAttribute("message", mesg);
                res.sendRedirect("error.jsp");
            }
        }
        }
        catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("error.jsp");
        } 
    }
}
