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
public class Commission {
    private String appid;
    private String doctorid;
    public String amount;
    public String adminpay;

    public String getAppid() {
        return appid;
    }

    public void setAppid(String appid) {
        this.appid = appid;
    }

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getAdminpay() {
        return adminpay;
    }

    public void setAdminpay(String adminpay) {
        this.adminpay = adminpay;
    }

    public Commission(String appid, String doctorid, String amount, String adminpay) {
        this.appid = appid;
        this.doctorid = doctorid;
        this.amount = amount;
        this.adminpay = adminpay;
    }
    public Commission() {
        this.appid = null;
        this.doctorid = null;
        this.amount = null;
        this.adminpay = null;
    }

    @Override
    public String toString() {
        return "Commission{" + "appid=" + appid + ", doctorid=" + doctorid + ", amount=" + amount + ", adminpay=" + adminpay + '}';
    }

}
