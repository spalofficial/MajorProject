/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;

import com.souvik.hitmca2018.model.Admins;
import java.sql.*;
import java.io.*;
import java.util.*;

/**
 *
 * @author Souvik Pal
 */
public class AdminsDao {
    public boolean postAdmins(Admins u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into admins values('"+u1.getAdminid()+"','"+u1.getFirstname()+"','"+u1.getLastname()+"','"+u1.getPhoneno()+"','"+u1.getGender()+"','"+u1.getEmail()+"','"+u1.getPassword()+"','"+u1.getSecques()+"','"+u1.getAnswer()+"')";
        int x=st.executeUpdate(query);
        if(x>0){
            ans=true;
        }
    }  
    catch(Exception e){
        throw(e);
    }
    return ans;
 }
    public Admins getAdmins(String user) throws Exception{
    Admins u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from admins where adminid='"+user+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Admins();
            u1.setAdminid(rs.getString(1));
            u1.setFirstname(rs.getString(2));
            u1.setLastname(rs.getString(3));
            u1.setPhoneno(rs.getString(4));
            u1.setGender(rs.getString(5));
            u1.setEmail(rs.getString(6));
            u1.setPassword(rs.getString(7));
            u1.setSecques(rs.getString(8));
            u1.setAnswer(rs.getString(9));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }

    public boolean updateAdmins(String user,String newpass) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update admins set password='"+newpass+"' where adminid='"+user+"'";
        int x=st.executeUpdate(query);
        if(x>0){
            ans=true;
        }
    }  
    catch(Exception e){
        throw(e);
    }    
    return ans;
    }
    public boolean updateAdminsProfile(String query) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        int x=st.executeUpdate(query);
        if(x>0){
            ans=true;
        }
    }  
    catch(Exception e){
        throw(e);
    }    
    return ans;
    }
}
