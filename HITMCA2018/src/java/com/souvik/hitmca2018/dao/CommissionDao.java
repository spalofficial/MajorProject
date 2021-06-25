/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.dao;
import com.souvik.hitmca2018.model.Commission;
import java.sql.*;
import java.io.*;
import java.util.*;
/**
 *
 * @author Souvik Pal
 */
public class CommissionDao {
    
    public boolean postCommission(Commission u1) throws Exception{
    boolean ans=false;
    try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="insert into commission values('"+u1.getAppid()+"','"+u1.getDoctorid()+"','"+u1.getAmount()+"','"+u1.getAdminpay()+"')";
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
    public void updateCommission(String appid, String doctorid)throws Exception{
     try{
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","n1","p1");
        Statement st=con.createStatement();
        String query="update commission set adminpay='yes' where appid='"+appid+"' and doctorid='"+doctorid+"'";
        st.executeUpdate(query);
    }  
    catch(Exception e){
        throw(e);
    }   
        
    }
    
}
