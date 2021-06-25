/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;
import com.souvik.hitmca2018.model.Appointment;
import java.sql.*;
import java.io.*;
import java.util.*;
/**
 *
 * @author Souvik Pal
 */
public class AppointmentDao {
    
    public boolean postAppontment(Appointment u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into appointment values('"+u1.getAppid()+"','"+u1.getUserid()+"','"+u1.getDoctorid()+"','"+u1.getAppstatus()+"','"+u1.getAppdate()+"','"+u1.getVisitstatus()+"','"+u1.getPaymentstatus()+"')";
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
    public Appointment getAppointment(String utype,String userid) throws Exception{
    Appointment u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query=null;
        if(utype.equals("user")){
        query="select * from appointment where userid='"+userid+"'";
        }
        else if(utype.equals("doctor")){
        query="select * from appointment where doctorid='"+userid+"'";    
        }
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Appointment();
            u1.setAppid(rs.getString(1));
            u1.setUserid(rs.getString(2));
            u1.setDoctorid(rs.getString(3));
            u1.setAppstatus(rs.getString(4));
            u1.setAppdate(rs.getString(5));
            u1.setVisitstatus(rs.getString(6));
            u1.setPaymentstatus(rs.getString(7));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }
    public boolean deleteAppointment(String utype,String userid,String appid) throws Exception{
    
        boolean ans=false;
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query=null;
        if(utype.equals("user")){
        query="delete from appointment where userid='"+userid+"' and appid='"+appid+"'";
        }
        else if(utype.equals("doctor")){
        query="select * from appointment where doctorid='"+userid+"'and appid='"+appid+"'";    
        }
        int x=st.executeUpdate(query);
        if(x>0){
        ans=true;
        }
        else{
            ans=false;
        }
        } 
    catch(Exception e){
        throw(e);
    }
    return ans;
    }
    public void updateAppointment(String query,String appid) throws Exception{
        try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        st.executeUpdate(query);
        }
    catch(Exception e){
        throw(e);
    }
    }
}
