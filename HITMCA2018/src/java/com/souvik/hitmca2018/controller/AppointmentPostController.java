/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.AppointmentDao;
import com.souvik.hitmca2018.model.Appointment;
import com.souvik.hitmca2018.dao.AppointmentDao;
import com.souvik.hitmca2018.dao.IdgenDao;
import com.souvik.hitmca2018.model.Appointment;
import com.souvik.hitmca2018.model.Idgen;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 *
 * @author Souvik Pal
 */
public class AppointmentPostController extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    AppointmentDao app=new AppointmentDao();
    IdgenDao id=new IdgenDao();  
    HttpSession session=req.getSession();
    String userid=(String)session.getAttribute("userid");
    String doctorid=req.getParameter("id");
    try{
    Idgen i=id.getIdgen("ap");
    String appid=i.getName()+i.getValue();
    Appointment a= new Appointment(appid,userid,doctorid,"pending","pending","pending","pending");
    boolean ans=app.postAppontment(a);
    if(ans==true){
        id.updateIdgen("ap");
        mesg= "Appointment successful";
        session.setAttribute("message", mesg);
        res.sendRedirect("ustatus.jsp");
    }
    else{
        mesg= "Appointment unsuccessful";
        session.setAttribute("message", mesg);
        res.sendRedirect("ustatus.jsp");
    }
    }
    catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("ustatus.jsp");
    }
  }
}
