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
public class SupplyAssignDetail {
    private int id;
    private int treatmentsheetId;
    private int supplyId;
    private int quantity;
    private Date startDate;
    private String status;
    private String observationDetail;
    private boolean isDeleted;

    // Constructors, getters, and setters
    public SupplyAssignDetail() {}

    public SupplyAssignDetail(int id, int treatmentsheetId, int supplyId, int quantity, Date startDate, String status, String observationDetail, boolean isDeleted) {
        this.id = id;
        this.treatmentsheetId = treatmentsheetId;
        this.supplyId = supplyId;
        this.quantity = quantity;
        this.startDate = startDate;
        this.status = status;
        this.observationDetail = observationDetail;
        this.isDeleted = isDeleted;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getTreatmentsheetId() {
        return treatmentsheetId;
    }

    public void setTreatmentsheetId(int treatmentsheetId) {
        this.treatmentsheetId = treatmentsheetId;
    }

    public int getSupplyId() {
        return supplyId;
    }

    public void setSupplyId(int supplyId) {
        this.supplyId = supplyId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getObservationDetail() {
        return observationDetail;
    }

    public void setObservationDetail(String observationDetail) {
        this.observationDetail = observationDetail;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }
    
    
}
