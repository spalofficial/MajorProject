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
public class Admins {
    
    private String adminid;
    private String firstname;
    private String lastname;
    private String phoneno;
    private String gender;
    private String email;
    private String password;
    private String secques;
    private String answer;

    public String getAdminid() {
        return adminid;
    }

    public void setAdminid(String adminid) {
        this.adminid = adminid;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getSecques() {
        return secques;
    }

    public void setSecques(String secques) {
        this.secques = secques;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "Admins{" + "adminid=" + adminid + ", firstname=" + firstname + ", lastname=" + lastname + ", phoneno=" + phoneno + ", gender=" + gender + ", email=" + email + ", password=" + password + ", secques=" + secques + ", answer=" + answer + '}';
    }

    public Admins(String adminid, String firstname, String lastname, String phoneno, String gender, String email, String password, String secques, String answer) {
        this.adminid = adminid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phoneno = phoneno;
        this.gender = gender;
        this.email = email;
        this.password = password;
        this.secques = secques;
        this.answer = answer;
    }
    public Admins() {
        this.adminid = null;
        this.firstname = null;
        this.lastname = null;
        this.phoneno = null;
        this.gender = null;
        this.email = null;
        this.password = null;
        this.secques = null;
        this.answer = null;
    }
    
    
}
