/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import com.souvik.hitmca2018.dao.AppointmentDao;
import com.souvik.hitmca2018.model.Appointment;

/**
 *
 * @author Souvik Pal
 */
public class AppointmentDeleteController extends HttpServlet {

    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    AppointmentDao app=new AppointmentDao();
    HttpSession session=req.getSession();
    String userid=(String)session.getAttribute("userid"); 
    String usertype=(String)session.getAttribute("usertype");
    String appid=req.getParameter("appid");
    try{
    boolean ans=app.deleteAppointment(usertype, userid, appid);
    if(ans==true){
        res.sendRedirect("uappoint.jsp");
    }
    else{
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
