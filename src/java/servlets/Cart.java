/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Jay
 */
public class Cart {
     String productid;
    String userid;
    int productCartQty;

    public String getProductid() {
        return productid;
    }

    public void setProductid(String productid) {
        this.productid = productid;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public int getProductCartQty() {
        return productCartQty;
    }

    public void setProductCartQty(int productCartQty) {
        this.productCartQty = productCartQty;
    }

    public int getProductqty() {
        return productqty;
    }

    public void setProductqty(int productqty) {
        this.productqty = productqty;
    }

    public int getNewproductQty() {
        return newproductQty;
    }

    public void setNewproductQty(int newproductQty) {
        this.newproductQty = newproductQty;
    }

    public boolean isCheck() {
        return check;
    }

    public void setCheck(boolean check) {
        this.check = check;
    }
    
    int productqty=0; //actual quantity of phones
    int newproductQty=0;
    
    boolean check = false;
    

    public Cart() {
    }

    public Cart(String productid, String userid) {
        this.productid = productid;
        this.userid = userid;
        //this.productqty = productqty;
    }

   
    
    
    
}
