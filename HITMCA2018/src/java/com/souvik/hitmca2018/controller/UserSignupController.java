/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.IdgenDao;
import com.souvik.hitmca2018.dao.UserDao;
import com.souvik.hitmca2018.model.Idgen;
import com.souvik.hitmca2018.model.User;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class UserSignupController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    PrintWriter pw=res.getWriter();
    String userid=(String)req.getParameter("userid");
    String firstname=req.getParameter("firstname");
    String lastname=req.getParameter("lastname");
    String phoneno=req.getParameter("phoneno");
    String dateofbirth=req.getParameter("dob");
    String gender=req.getParameter("gender");
    String bloodgroup=req.getParameter("bloodgroup");
    String address=req.getParameter("address");
    String city=req.getParameter("city");
    String state=req.getParameter("state");
    String country=req.getParameter("country");
    String zipcode=req.getParameter("zipcode");
    String email=req.getParameter("email");
    String password=(String)req.getParameter("password");
    String secques=req.getParameter("secques");
    String answer=req.getParameter("answer");
    
        User u1=new User(userid,firstname,lastname,phoneno,dateofbirth,gender,bloodgroup,address,city,state,country,zipcode,email,password,secques,answer);
        UserDao dao=new UserDao();
        try{
        boolean ans=dao.postUser(u1);
        if(ans==false){
        mesg="User Registration Unsuccessful, Please try again";
        }
        else{
        IdgenDao id=new IdgenDao();
        id.updateIdgen("u");
        mesg="User Registration Successful, Please login with your userid and password";
        }
        }
        catch(Exception e){
        mesg= e.toString();           
        }
       HttpSession session= req.getSession();
       session.setAttribute("message", mesg);
       res.sendRedirect("status.jsp");
    }
}
