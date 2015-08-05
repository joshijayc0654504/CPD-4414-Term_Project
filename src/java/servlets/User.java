/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

/**
 *
 * @author Jay
 */
public class User {
    int userid;
    String firstname;
    String lastname;
    String username;
    String emailid;
    String gender;
    String address;
    String city;
    String password;  
    
    public User(){
        
    }
    
    
    public User(String firstname,String lastname,String username,String emailid,String gender,String address,String city,String password){
        this.firstname=firstname;
        this.lastname=lastname;
        this.username=username;
        this.emailid=emailid;        
        this.gender=gender;
        this.address=address;
        this.city=city;
        this.password=password;
    }
    
    
    public int getUserId() {
        return userid;
    }

    public void setUserId(int userid) {
        this.userid = userid;
    }

    public String getFirstName() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastName() {
        return lastname;
    }

    public void setLastName(String lastname) {
        this.lastname = lastname;
    }

    public String getUserName() {
        return username;
    }

    public void setUserName(String username) {
        this.username = username;
    }
    
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmailId() {
        return emailid;
    }

    public void setEmailId(String emailid) {
        this.emailid = emailid;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
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
    
}
