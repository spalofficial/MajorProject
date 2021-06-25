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
public class Appointment {
    private String appid;
    private String userid;
    private String doctorid;
    private String appstatus;
    private String appdate;
    private String visitstatus;
    private String paymentstatus;

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid;
    }

    public String getAppstatus() {
        return appstatus;
    }

    public void setAppstatus(String appstatus) {
        this.appstatus = appstatus;
    }

    public String getAppdate() {
        return appdate;
    }

    public void setAppdate(String appdate) {
        this.appdate = appdate;
    }

    public String getVisitstatus() {
        return visitstatus;
    }

    public void setVisitstatus(String visitstatus) {
        this.visitstatus = visitstatus;
    }

    public String getPaymentstatus() {
        return paymentstatus;
    }

    public void setPaymentstatus(String paymentstatus) {
        this.paymentstatus = paymentstatus;
    }

    @Override
    public String toString() {
        return "Appointment{" + "appid=" + appid + ", userid=" + userid + ", doctorid=" + doctorid + ", appstatus=" + appstatus + ", appdate=" + appdate + ", visitstatus=" + visitstatus + ", paymentstatus=" + paymentstatus + '}';
    }

    public Appointment(String appid, String userid, String doctorid, String appstatus, String appdate, String visitstatus, String paymentstatus) {
        this.appid = appid;
        this.userid = userid;
        this.doctorid = doctorid;
        this.appstatus = appstatus;
        this.appdate = appdate;
        this.visitstatus = visitstatus;
        this.paymentstatus = paymentstatus;
    }
    
    public Appointment() {
        this.appid = null;
        this.userid = null;
        this.doctorid = null;
        this.appstatus = null;
        this.appdate = null;
        this.visitstatus = null;
        this.paymentstatus = null;
    }
    
    
}
