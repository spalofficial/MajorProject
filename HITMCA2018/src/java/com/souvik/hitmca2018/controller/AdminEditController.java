/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.AdminsDao;
import com.souvik.hitmca2018.model.Admins;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class AdminEditController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    PrintWriter pw=res.getWriter();
    String userid=req.getParameter("userid");
    String firstname=req.getParameter("firstname");
    String lastname=req.getParameter("lastname");
    String phoneno=req.getParameter("phoneno");
    String gender=req.getParameter("gender");
     String email=req.getParameter("email");
        String query="update admins set firstname='"+firstname+"', lastname='"+lastname+"',phoneno='"+phoneno+"',"
                + " gender='"+gender+"',email='"+email+"' where adminid='"+userid+"'";
        pw.println(query);
        AdminsDao dao=new AdminsDao();
        try{
        boolean ans=dao.updateAdminsProfile(query);
        if(ans==false){
        mesg="Admin Profile update Unsuccessful, Please try again";
        }
        else{    
        mesg="Admin Profile updation Successful";
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
       res.sendRedirect("astatus.jsp");
    }
}
