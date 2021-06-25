/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.controller;

import com.souvik.hitmca2018.dao.UserDao;
import com.souvik.hitmca2018.model.User;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

/**
 *
 * @author Souvik Pal
 */
public class UserEditController extends HttpServlet {
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res)throws IOException, ServletException{
    String mesg=null;
    PrintWriter pw=res.getWriter();
    String userid=req.getParameter("userid");
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
        String query="update users set firstname='"+firstname+"', lastname='"+lastname+"',phoneno='"+phoneno+"',"
                + "dateofbirth='"+dateofbirth+"', gender='"+gender+"', bloodgroup='"+bloodgroup+"', address='"+address+"', "
                + "city='"+city+"', ustate='"+state+"' , country='"+country+"',zipcode='"+zipcode+"',email='"+email+"' where userid='"+userid+"'";
        UserDao dao=new UserDao();
        try{
        boolean ans=dao.updateUserProfile(query);
        if(ans==false){
        mesg="User Profile update Unsuccessful, Please try again";
        }
        else{    
        mesg="User Profile updation Successful";
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
                        session.removeAttribute("b");
                        session.removeAttribute("cc");
                        session.removeAttribute("s");
                        session.removeAttribute("c");
                        session.removeAttribute("a");
                        session.removeAttribute("z");
                        session.removeAttribute("e");
       session.setAttribute("message", mesg);
       res.sendRedirect("ustatus.jsp");
    }
}
