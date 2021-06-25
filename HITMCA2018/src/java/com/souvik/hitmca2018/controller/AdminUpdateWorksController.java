/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.CommissionDao;
import com.souvik.hitmca2018.dao.DoctorDao;
import com.souvik.hitmca2018.dao.UserDao;
import com.souvik.hitmca2018.model.Commission;
import com.souvik.hitmca2018.model.Doctor;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;


/**
 *
 * @author Souvik Pal
 */
public class AdminUpdateWorksController extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String query=null;
    HttpSession session=req.getSession();
    String id=req.getParameter("id");
    String action=req.getParameter("action");
    //String type=req.getParameter("type");
    //String list=req.getParameter("list");
    try{
        if(action.equals("commission")){
            String did=req.getParameter("did");
            session.setAttribute("app", id);
            session.setAttribute("doc", did);
            res.sendRedirect("setcommission.jsp");
        }
        else{
        String type=req.getParameter("type");
        String list=req.getParameter("list");    
        if(type.equals("user")&&action.equals("delete")){
            UserDao dao=new UserDao();
            dao.deleteUser(id);
            res.sendRedirect("plist.jsp");
        }else if(type.equals("doctor")&&action.equals("v")){
            DoctorDao dao=new DoctorDao();
            dao.verifyDoctor(id);
            res.sendRedirect("verifydoc.jsp");    
        }else if(type.equals("doctor")&&action.equals("delete")){
            DoctorDao dao=new DoctorDao();
            dao.deleteDoctor(id);
            if(list.equals("dlist")&&action.equals("delete")){
            res.sendRedirect("dlist.jsp");
            }else{
            res.sendRedirect("verifydoc.jsp");    
            }
        }
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
    String appid=(String)session.getAttribute("app");
    String doctorid=(String)session.getAttribute("doc");

   int commission=Integer.parseInt(req.getParameter("commission"));
    try{
        DoctorDao d=new DoctorDao();
        Doctor dd=d.getDoctor(doctorid);
        int fees=Integer.parseInt(dd.getFees());
        int comp=Integer.parseInt(req.getParameter("commission"));
        String commissions=String.valueOf((comp*fees)/100);
        CommissionDao dao=new CommissionDao();
        Commission u1=new Commission(appid,doctorid,commissions,"pending");
        dao.postCommission(u1);
        res.sendRedirect("gencommission.jsp");
    }
    catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("astatus.jsp");
    }
    
  }
}