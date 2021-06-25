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
public class User {
    private String userid;
    private String firstname;
    private String lastname;
    private String phoneno;
    private String dateofbirth;
    private String gender;
    private String bloodgroup;
    private String address;
    private String city;
    private String state;
    private String country;
    private String zipcode;
    private String email;
    private String password;
    private String secques;
    private String answer;

    public String getPhoneno() {
        return phoneno;
    }

    public void setPhoneno(String phoneno) {
        this.phoneno = phoneno;
    }

    
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
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

    public String getDateofbirth() {
        return dateofbirth;
    }

    public void setDateofbirth(String dateofbirth) {
        this.dateofbirth = dateofbirth;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBloodgroup() {
        return bloodgroup;
    }

    public void setBloodgroup(String bloodgroup) {
        this.bloodgroup = bloodgroup;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
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
   
    public User() {
        this.userid =null;
        this.firstname =null;
        this.lastname = null;
        this.dateofbirth = null;
        this.gender = null;
        this.bloodgroup =null;
        this.address = null;
        this.city =null;
        this.state = null;
        this.country = null;
        this.zipcode = null;
        this.email = null;
        this.password = null;
        this.secques=null;
        this.answer=null;
        this.phoneno=null;
    }

    public User(String userid, String firstname, String lastname, String phoneno, String dateofbirth, String gender, String bloodgroup, String address, String city, String state, String country, String zipcode, String email, String password, String secques, String answer) {
        this.userid = userid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phoneno = phoneno;
        this.dateofbirth = dateofbirth;
        this.gender = gender;
        this.bloodgroup = bloodgroup;
        this.address = address;
        this.city = city;
        this.state = state;
        this.country = country;
        this.zipcode = zipcode;
        this.email = email;
        this.password = password;
        this.secques = secques;
        this.answer = answer;
    }

    @Override
    public String toString() {
        return "User{" + "userid=" + userid + ", firstname=" + firstname + ", lastname=" + lastname + ", phoneno=" + phoneno + ", dateofbirth=" + dateofbirth + ", gender=" + gender + ", bloodgroup=" + bloodgroup + ", address=" + address + ", city=" + city + ", state=" + state + ", country=" + country + ", zipcode=" + zipcode + ", email=" + email + ", password=" + password + ", secques=" + secques + ", answer=" + answer + '}';
    }
    

   
}
