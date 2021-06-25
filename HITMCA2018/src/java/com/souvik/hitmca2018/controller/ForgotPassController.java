/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.UserDao;
import com.souvik.hitmca2018.model.User;
import com.souvik.hitmca2018.dao.DoctorDao;
import com.souvik.hitmca2018.model.Doctor;
import com.souvik.hitmca2018.dao.AdminsDao;
import com.souvik.hitmca2018.model.Admins;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class ForgotPassController extends HttpServlet {
 @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    HttpSession session= req.getSession();
    if(req.getParameter("answer")!=null){
        String usertype=(String)session.getAttribute("usertype");
        String answer=(String)session.getAttribute("answer"); 
        String inputanswer=(String)req.getParameter("answer");
        if(usertype.equals("user")){
        try{
            if(answer.equals(inputanswer)){ 
            res.sendRedirect("forgotpass2.jsp");   
            }
            else{            
            mesg="Wrong answer!! Please try again.";
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");    
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }  
       }
        else if(usertype.equals("doctor")){
        try{
            if(answer.equals(inputanswer)){ 
            res.sendRedirect("forgotpass2.jsp");   
            }
            else{            
            mesg="Wrong answer!! Please try again.";
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");    
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }  
       }
        else if(usertype.equals("admin")){
        try{
            if(answer.equals(inputanswer)){ 
            res.sendRedirect("forgotpass2.jsp");   
            }
            else{            
            mesg="Wrong answer!! Please try again.";
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");    
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }  
       }
      }
        else if(req.getParameter("newpass")!=null){
        boolean ans=false; 
        String newpass=req.getParameter("newpass"); 
        String usertype=(String)session.getAttribute("usertype");
        String user=(String)session.getAttribute("userid"); 
        if(usertype.equals("user")){        
        UserDao dao=new UserDao();
        try{
        ans=dao.updateUser(user,newpass); 
        if(ans==true){
            mesg="Password change successful, Please login with your new password.";
            session.setAttribute("message", mesg);
            res.sendRedirect("status.jsp");
        }
        else{
            session.setAttribute("message", mesg);
            mesg="Password change unsuccessful, Try again.";
            res.sendRedirect("error.jsp");
        }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
       }
        else if(usertype.equals("doctor")){        
        DoctorDao dao=new DoctorDao();
        try{
        ans=dao.updateDoctor(user,newpass); 
        if(ans==true){
            mesg="Password change successful, Please login with your new password.";
            session.setAttribute("message", mesg);
            res.sendRedirect("status.jsp");
        }
        else{
            session.setAttribute("message", mesg);
            mesg="Password change unsuccessful, Try again.";
            res.sendRedirect("error.jsp");
        }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
       }
        else if(usertype.equals("admin")){        
        AdminsDao dao=new AdminsDao();
        try{
        ans=dao.updateAdmins(user,newpass); 
        if(ans==true){
            mesg="Password change successful, Please login with your new password.";
            session.setAttribute("message", mesg);
            res.sendRedirect("status.jsp");
        }
        else{
            session.setAttribute("message", mesg);
            mesg="Password change unsuccessful, Try again.";
            res.sendRedirect("error.jsp");
        }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
       }
      }
    else if(req.getParameter("usertype")!=null &&req.getParameter("userid")!=null){        
    String user=(String)req.getParameter("userid");
    String usertype=(String)req.getParameter("usertype");   
        if(usertype.equals("user")){
        UserDao dao=new UserDao();
        try{
        User u1=dao.getUser(user); 
            if(u1==null){
                mesg="Userid is not found";
                session.setAttribute("message", mesg);
                res.sendRedirect("error.jsp"); 
            }
            else{
                session.setAttribute("secques", u1.getSecques());
                session.setAttribute("answer", u1.getAnswer());
                session.setAttribute("userid", user);
                session.setAttribute("usertype", "user");
                res.sendRedirect("forgotpass1.jsp");
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
      }
      else if(usertype.equals("doctor")){
        DoctorDao dao=new DoctorDao();
        try{
        Doctor u1=dao.getDoctor(user); 
            if(u1==null){
                mesg="Doctorid is not found";
                session.setAttribute("message", mesg);
                res.sendRedirect("error.jsp"); 
            }
            else{
                session.setAttribute("secques", u1.getSecques());
                session.setAttribute("answer", u1.getAnswer());
                session.setAttribute("userid", user);
                session.setAttribute("usertype", "doctor");
                res.sendRedirect("forgotpass1.jsp");
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
      } 
        else if(usertype.equals("admin")){
        AdminsDao dao=new AdminsDao();
        try{
        Admins u1=dao.getAdmins(user); 
            if(u1==null){
                mesg="AdminId is not found";
                session.setAttribute("message", mesg);
                res.sendRedirect("error.jsp"); 
            }
            else{
                session.setAttribute("secques", u1.getSecques());
                session.setAttribute("answer", u1.getAnswer());
                session.setAttribute("userid", user);
                session.setAttribute("usertype", "admin");
                res.sendRedirect("forgotpass1.jsp");
            }
        }
        catch(Exception e){
            mesg= e.toString();
            session.setAttribute("message", mesg);
            res.sendRedirect("error.jsp");
        }
      }
    }
  }
}