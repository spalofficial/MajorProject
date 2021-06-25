/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.CommissionDao;
import com.souvik.hitmca2018.model.Commission;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class DoctorPayController extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    HttpSession session=req.getSession();
    String doctorid=req.getParameter("did");
    String appid=req.getParameter("appid");
    try{
        CommissionDao dao=new CommissionDao();
        dao.updateCommission(appid, doctorid);
        res.sendRedirect("dcomlist.jsp");
    }
    catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("dstatus.jsp");
    }
  }
}
