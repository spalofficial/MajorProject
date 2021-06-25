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
public class AdminsSigninController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    String user=(String)req.getParameter("userid");
    String pass=(String)req.getParameter("password");
        AdminsDao dao=new AdminsDao();
        HttpSession session= req.getSession();
        try{
        Admins u1=dao.getAdmins(user); 
        if(u1==null){
            mesg="Login Unsuccessful, Adminid not registered";
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp"); 
        }
        else{
            if(u1.getPassword().equals(pass)){
                session.setAttribute("userid", user);
                session.setAttribute("usertype", "admin");
                res.sendRedirect("awelcome.jsp");
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
