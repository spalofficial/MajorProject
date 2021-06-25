/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.souvik.hitmca2018.model;

/**
 *
 * @author Souvik Pal
 */
public class Feedback {
    String usertype;
    String userid;
    String issue;
    String date;

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "Feedback{" + "usertype=" + usertype + ", userid=" + userid + ", issue=" + issue + ", date=" + date + '}';
    }

    public Feedback(String usertype, String userid, String date,String issue) {
        this.usertype = usertype;
        this.userid = userid;
        this.issue = issue;
        this.date = date;
    }

    
    public Feedback() {
        this.usertype = null;
        this.userid = null;
        this.issue = null;
        this.date=null;
    }
    
}
