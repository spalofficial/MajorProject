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
public class Report {
    private String appid;
    private String userid;
    private String doctorid;
    private String disease;
    private String description;
    private String medication;
    private String dates;

    public Report(String appid, String userid, String doctorid, String disease, String description, String medication, String dates) {
        this.appid = appid;
        this.userid = userid;
        this.doctorid = doctorid;
        this.disease = disease;
        this.description = description;
        this.medication = medication;
        this.dates = dates;
    }
     public Report() {
        this.appid = null;
        this.userid = null;
        this.doctorid = null;
        this.disease = null;
        this.description = null;
        this.medication = null;
        this.dates = null;
    }

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

    public String getDisease() {
        return disease;
    }

    public void setDisease(String disease) {
        this.disease = disease;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMedication() {
        return medication;
    }

    public void setMedication(String medication) {
        this.medication = medication;
    }

    public String getDates() {
        return dates;
    }

    public void setDates(String dates) {
        this.dates = dates;
    }

    @Override
    public String toString() {
        return "Report{" + "appid=" + appid + ", userid=" + userid + ", doctorid=" + doctorid + ", disease=" + disease + ", description=" + description + ", medication=" + medication + ", dates=" + dates + '}';
    }
}
