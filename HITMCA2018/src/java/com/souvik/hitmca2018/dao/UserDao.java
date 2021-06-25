/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;

import com.souvik.hitmca2018.model.User;
import java.sql.*;
import java.io.*;
import java.util.*;

/**
 *
 * @author Souvik Pal
 */
public class UserDao {
    public boolean postUser(User u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into users values('"+u1.getUserid()+"','"+u1.getFirstname()+"','"+u1.getLastname()+"','"+u1.getPhoneno()+"','"+u1.getDateofbirth()+"','"+u1.getGender()+"','"+u1.getBloodgroup()+"','"+u1.getAddress()+"','"+u1.getCity()+"','"+u1.getState()+"','"+u1.getCountry()+"','"+u1.getZipcode()+"','"+u1.getEmail()+"','"+u1.getPassword()+"','"+u1.getSecques()+"','"+u1.getAnswer()+"')";
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
    public User getUser(String user) throws Exception{
    User u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from users where userid='"+user+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new User();
            u1.setUserid(rs.getString(1));
            u1.setFirstname(rs.getString(2));
            u1.setLastname(rs.getString(3));
            u1.setPhoneno(rs.getString(4));
            u1.setDateofbirth(rs.getString(5));
            u1.setGender(rs.getString(6));
            u1.setBloodgroup(rs.getString(7));
            u1.setAddress(rs.getString(8));
            u1.setCity(rs.getString(9));
            u1.setState(rs.getString(10));
            u1.setCountry(rs.getString(11));
            u1.setZipcode(rs.getString(12));
            u1.setEmail(rs.getString(13));
            u1.setPassword(rs.getString(14));
            u1.setSecques(rs.getString(15));
            u1.setAnswer(rs.getString(16));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }

    public boolean updateUser(String user,String newpass) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update users set password='"+newpass+"' where userid='"+user+"'";
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
     public boolean updateUserProfile(String query) throws Exception{
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
    
    public void deleteUser(String userid) throws Exception{
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="delete from users where userid='"+userid+"'";
        st.executeUpdate(query);
     }  
     catch(Exception e){
        throw(e);
     }    
   }
}
