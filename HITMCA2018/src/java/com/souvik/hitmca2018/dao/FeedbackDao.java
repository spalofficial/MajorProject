/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;

import com.souvik.hitmca2018.model.Feedback;
import java.sql.*;
/**
 *
 * @author Souvik Pal
 */
public class FeedbackDao {
    public Feedback getFeedback(String name) throws Exception{
    Feedback u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from feedback";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Feedback();
            u1.setUserid(rs.getString(2));
            u1.setUsertype(rs.getString(1));
            u1.setDate(rs.getString(3));
            u1.setIssue(rs.getString(4));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    } 
    public boolean postFeedback(Feedback u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into feedback values('"+u1.getUsertype()+"','"+u1.getUserid()+"','"+u1.getDate()+"','"+u1.getIssue()+"')";
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
