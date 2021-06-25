/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.FeedbackDao;
import com.souvik.hitmca2018.model.Feedback;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class FeedbackController extends HttpServlet {
@Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    HttpSession session= req.getSession();
    String userid=(String)session.getAttribute("userid");
    String usertype=(String)session.getAttribute("usertype");
    String date=java.time.LocalDate.now().toString();
    String issue=req.getParameter("issue");
        try{
            FeedbackDao dao=new FeedbackDao();
            Feedback u1=new Feedback(usertype,userid,date,issue);
            boolean ans=dao.postFeedback(u1);
            if(ans==true){
            mesg="Feedback submitted";
            session.setAttribute("message", mesg);
            if(session.getAttribute("usertype").equals("users")){
            res.sendRedirect("ustatus.jsp");    
            }else{
            res.sendRedirect("dstatus.jsp");        
            }
            }else{
            mesg="Feedback submitted";
            session.setAttribute("message", mesg);
            if(session.getAttribute("usertype").equals("users")){
            res.sendRedirect("ustatus.jsp");    
            }else{
            res.sendRedirect("dstatus.jsp");        
            }
            }
        }
        catch(Exception e){
        mesg= e.toString();
        session.setAttribute("message", mesg);
        res.sendRedirect("ustatus.jsp");
        } 
    }
}
