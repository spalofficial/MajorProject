/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;
import com.souvik.hitmca2018.model.Doctor;
import java.sql.*;
import java.io.*;
import java.util.*;
/**
 *
 * @author Souvik Pal
 */
public class DoctorDao {
    
    public boolean postDoctor(Doctor u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into doctor values('"+u1.getDoctorid()+"','"+u1.getFirstname()+"','"+u1.getLastname()+"','"+u1.getPhoneno()+"','"+u1.getGender()+"','"+u1.getDepartment()+"','"+u1.getDegree()+"','"+u1.getCliniccity()+"','"+u1.getFees()+"','"+u1.getEmail()+"','"+u1.getPassword()+"','"+u1.getSecques()+"','"+u1.getAnswer()+"','"+u1.getVstatus()+"')";
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
    public Doctor getDoctor(String user) throws Exception{
    Doctor u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from doctor where doctorid='"+user+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Doctor();
            u1.setDoctorid(rs.getString(1));
            u1.setFirstname(rs.getString(2));
            u1.setLastname(rs.getString(3));
            u1.setPhoneno(rs.getString(4));
            u1.setGender(rs.getString(5));
            u1.setDepartment(rs.getString(6));
            u1.setDegree(rs.getString(7));
            u1.setCliniccity(rs.getString(8));
            u1.setFees(rs.getString(9));   
            u1.setEmail(rs.getString(10));
            u1.setPassword(rs.getString(11));
            u1.setSecques(rs.getString(12));
            u1.setAnswer(rs.getString(13));
            u1.setVstatus(rs.getString(14));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }

    public boolean updateDoctor(String user,String newpass) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update doctor set password='"+newpass+"' where doctorid='"+user+"'";
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
    public boolean updatedoctorProfile(String query) throws Exception{
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
    
    public void deleteDoctor(String doctorid) throws Exception{
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="delete from doctor where doctorid='"+doctorid+"'";
        st.executeUpdate(query);
     }  
     catch(Exception e){
        throw(e);
     }    
   }
    public void verifyDoctor(String doctorid) throws Exception{
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update doctor set vstatus='yes' where doctorid='"+doctorid+"'";
        st.executeUpdate(query);
     }  
     catch(Exception e){
        throw(e);
     }    
   }  
}
