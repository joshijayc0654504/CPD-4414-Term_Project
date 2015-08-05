/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.InputStream;

/**
 *
 * @author Jay
 */
public class Product {
	
   // DBConnection conn;
	public int productid;
	public String pname;
	//public int quantity;
	public double price;
        public String photo; 
       // InputStream inputStream;

	public Product(){
        
        }
	public Product(String pname,double price) {
		this.productid = productid;
		this.pname = pname;
		//this.quantity = quantity;
		this.price = price;
                //this.inputStream = inputStream;
	}

    
	
	public void setPid(int productid) {
		this.productid = productid; 
	}

	public void setPname(String pname) {
		this.pname = pname; 
	}

	/*public void setQty(int quantity) {
		this.quantity = quantity; 
	}*/

	public void setPrice(double price) {
		this.price = price; 
	}

	public int getPid() {
		return (this.productid); 
	}

	public String getPname() {
		return (this.pname); 
	}

	/*public int getQty() {
		return (this.quantity); 
	}*/

	public double getPrice() {
		return (this.price); 
	}
        
        
   
}
