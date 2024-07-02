/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Legion
 */
public class Supply {
    private int id;
    private String materialName;
    private float price;
    private int quantity;
    private Date createdAt;
    private boolean isDeleted;

    // Constructors, getters, and setters
    public Supply() {}

    public Supply(int id, String materialName, float price, int quantity, Date createdAt, boolean isDeleted) {
        this.id = id;
        this.materialName = materialName;
        this.price = price;
        this.quantity = quantity;
        this.createdAt = createdAt;
        this.isDeleted = isDeleted;
    }

    // Getters and setters for each attribute

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMaterialName() {
        return materialName;
    }

    public void setMaterialName(String materialName) {
        this.materialName = materialName;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }
    
}
