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
public class TreatmentSheet {
    private int id;
    private int medicalRecordId;
    private String currentCondition;
    private boolean isDeleted;
    private Date createdAt;

    // Constructors, getters, and setters
    public TreatmentSheet() {}

    public TreatmentSheet(int id, int medicalRecordId, String currentCondition, boolean isDeleted, Date createdAt) {
        this.id = id;
        this.medicalRecordId = medicalRecordId;
        this.currentCondition = currentCondition;
        this.isDeleted = isDeleted;
        this.createdAt = createdAt;
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

    public String getCurrentCondition() {
        return currentCondition;
    }

    public void setCurrentCondition(String currentCondition) {
        this.currentCondition = currentCondition;
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
    
}
