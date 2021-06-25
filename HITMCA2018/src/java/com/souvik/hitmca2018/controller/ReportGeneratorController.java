/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.ReportDao;
import com.souvik.hitmca2018.model.Report;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class ReportGeneratorController extends HttpServlet {
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String appid=req.getParameter("appid");
    String userid=req.getParameter("userid");
    String doctorid=req.getParameter("doctorid");
    String disease=req.getParameter("disease");
    String description=req.getParameter("description");
    String medication=req.getParameter("medication");
    String dates=req.getParameter("dates");
    ReportDao dao=new ReportDao();
    Report u1=new Report(appid,userid,doctorid,disease,description,medication,dates);
     try{
        boolean ans=dao.postReport(u1);
        if(ans==false){
        mesg="Report Registration Unsuccessful, Please try again";
        }
        else{
        mesg="Report generated Successfully.";
        }
        }
        catch(Exception e){
        mesg= e.toString();           
        }
       HttpSession session= req.getSession();
       session.setAttribute("message", mesg);
       res.sendRedirect("dstatus.jsp");
    }
}
