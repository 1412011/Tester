package com.spring.model;
// Generated Dec 31, 2017 2:05:26 PM by Hibernate Tools 4.3.1



/**
 * Users generated by hbm2java
 */
public class Users  implements java.io.Serializable {


     private String username;
     private String password;
     private byte enabled;

    public Users() {
    }

    public Users(String username, String password, byte enabled) {
       this.username = username;
       this.password = password;
       this.enabled = enabled;
    }
   
    public String getUsername() {
        return this.username;
    }
    
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public byte getEnabled() {
        return this.enabled;
    }
    
    public void setEnabled(byte enabled) {
        this.enabled = enabled;
    }




}

