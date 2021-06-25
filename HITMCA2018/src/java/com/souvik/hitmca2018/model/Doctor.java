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
public class Doctor {
    private String doctorid;
    private String firstname;
    private String lastname;
    private String phoneno;
    private String gender;
    private String department;
    private String degree;
    private String cliniccity;
    private String fees;
    private String email;
    private String password;
    private String secques;
    private String answer;
    private String vstatus;

    public String getDoctorid() {
        return doctorid;
    }

    public void setDoctorid(String doctorid) {
        this.doctorid = doctorid;
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

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }

    public String getCliniccity() {
        return cliniccity;
    }

    public void setCliniccity(String cliniccity) {
        this.cliniccity = cliniccity;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
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

    public String getVstatus() {
        return vstatus;
    }

    public void setVstatus(String vstatus) {
        this.vstatus = vstatus;
    }

    @Override
    public String toString() {
        return "Doctor{" + "doctorid=" + doctorid + ", firstname=" + firstname + ", lastname=" + lastname + ", phoneno=" + phoneno + ", gender=" + gender + ", department=" + department + ", degree=" + degree + ", cliniccity=" + cliniccity + ", fees=" + fees + ", email=" + email + ", password=" + password + ", secques=" + secques + ", answer=" + answer + ", vstatus=" + vstatus + '}';
    }

    public Doctor(String doctorid, String firstname, String lastname, String phoneno, String gender, String department, String degree, String cliniccity, String fees, String email, String password, String secques, String answer, String vstatus) {
        this.doctorid = doctorid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phoneno = phoneno;
        this.gender = gender;
        this.department = department;
        this.degree = degree;
        this.cliniccity = cliniccity;
        this.fees = fees;
        this.email = email;
        this.password = password;
        this.secques = secques;
        this.answer = answer;
        this.vstatus = vstatus;
    }
    public Doctor() {
        this.doctorid = null;
        this.firstname =null;
        this.lastname = null;
        this.phoneno =null;
        this.gender = null;
        this.department = null;
        this.degree = null;
        this.cliniccity = null;
        this.fees = null;
        this.email = null;
        this.password = null;
        this.secques = null;
        this.answer = null;
        this.vstatus = null;
    }
    
}
