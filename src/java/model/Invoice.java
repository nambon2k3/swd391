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
public class Invoice {
    private int id;
    private int medicalRecordId;
    private boolean isDeleted;
    private Date createdAt;
    private float total;
    private String paymentMethod;
    private int userId;

    // Constructors, getters, and setters
    public Invoice() {}

    public Invoice(int id, int medicalRecordId, boolean isDeleted, Date createdAt, float total, String paymentMethod, int userId) {
        this.id = id;
        this.medicalRecordId = medicalRecordId;
        this.isDeleted = isDeleted;
        this.createdAt = createdAt;
        this.total = total;
        this.paymentMethod = paymentMethod;
        this.userId = userId;
    }

    // Getters and setters for each attribute

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getMedicalRecordId() {
        return medicalRecordId;
    }

    public void setMedicalRecordId(int medicalRecordId) {
        this.medicalRecordId = medicalRecordId;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public String getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(String paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }
    
}
