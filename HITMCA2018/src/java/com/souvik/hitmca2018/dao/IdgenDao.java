/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;
import com.souvik.hitmca2018.model.Idgen;
import java.sql.*;
import java.io.*;
import java.util.*;
/**
 *
 * @author Souvik Pal
 */
public class IdgenDao {
    
    public Idgen getIdgen(String name) throws Exception{
    Idgen u1=null;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="select * from idgen where name='"+name+"'";
        ResultSet rs=st.executeQuery(query);
        if(rs.next()){
            u1=new Idgen();
            u1.setName(rs.getString(1));
            u1.setValue(rs.getInt(2));
            }
        } 
    catch(Exception e){
        throw(e);
    }
    return u1;
    }
    
    public boolean updateIdgen(String name) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update idgen set value=value+1 where name='"+name+"'";
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
