package com.souvik.hitmca2018.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.souvik.hitmca2018.model.Report;
import java.sql.*;
import java.io.*;
import java.util.*;
/**
 *
 * @author Souvik Pal
 */
public class ReportDao {
    
    public boolean postReport(Report u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into report values('"+u1.getAppid()+"','"+u1.getUserid()+"','"+u1.getDoctorid()+"','"+u1.getDisease()+"','"+u1.getDescription()+"','"+u1.getMedication()+"','"+u1.getDates()+"')";
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
    public Report getReport(String user) throws Exception{
    Report u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from report where userid='"+user+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Report();
            u1.setAppid(rs.getString(1));
            u1.setUserid(rs.getString(2));
            u1.setDoctorid(rs.getString(3));
            u1.setDisease(rs.getString(4));
            u1.setDescription(rs.getString(5));
            u1.setMedication(rs.getString(6));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }
}

