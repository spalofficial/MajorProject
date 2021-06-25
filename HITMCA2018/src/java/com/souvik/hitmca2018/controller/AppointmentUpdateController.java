/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.AppointmentDao;
import com.souvik.hitmca2018.model.Appointment;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 *
 * @author Souvik Pal
 */
public class AppointmentUpdateController extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String query=null;
    HttpSession session=req.getSession();
    String doctorid=(String)session.getAttribute("userid");
    String appid=req.getParameter("id");
    String action=req.getParameter("action");
    try{
        if(action.equals("adate")){
            session.setAttribute("app", appid);
            res.sendRedirect("dsetdate.jsp");
        }else{
        if(action.equals("dvisit")){
            query="update appointment set visitstatus='yes' where appid='"+appid+"' and doctorid='"+doctorid+"'";
        }
        else if(action.equals("pstatus")){
            query="update appointment set paymentstatus='yes' where appid='"+appid+"' and doctorid='"+doctorid+"'";
        }
        else if(action.equals("cancel")){
            query="update appointment set visitstatus='cancelled', paymentstatus='cancelled', appdate='cancelled', appstatus='cancelled' where appid='"+appid+"' and doctorid='"+doctorid+"'";
        }
        AppointmentDao dao=new AppointmentDao();
        dao.updateAppointment(query, appid);
        res.sendRedirect("dpat.jsp");
        }
    }
    catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("dstatus.jsp");
    }
  }
    
    
    
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String query=null;
    HttpSession session=req.getSession();
    String doctorid=(String)session.getAttribute("userid");
    String app=(String)session.getAttribute("app");
    String date=req.getParameter("date");
    try{
        query="update appointment set appdate='"+date+"', appstatus='appointed' where appid='"+app+"' and doctorid='"+doctorid+"'";
        AppointmentDao dao=new AppointmentDao();
        dao.updateAppointment(query, app);
        res.sendRedirect("dpat.jsp");
    }
    catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("dstatus.jsp");
    }
  }
}
