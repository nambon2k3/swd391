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
public class MedicineAssignDetail {

    private int id;
    private int treatmentsheetId;
    private int medicineId;
    private int quantity;
    private String frequency;
    private String observationDetail;
    private Date startDate;
    private String status;
    private boolean isDeleted;

    // Constructors, getters, and setters
    public MedicineAssignDetail() {
    }

    public MedicineAssignDetail(int id, int treatmentsheetId, int medicineId, int quantity, String frequency, String observationDetail, Date startDate, String status, boolean isDeleted) {
        this.id = id;
        this.treatmentsheetId = treatmentsheetId;
        this.medicineId = medicineId;
        this.quantity = quantity;
        this.frequency = frequency;
        this.observationDetail = observationDetail;
        this.startDate = startDate;
        this.status = status;
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

    public int getMedicineId() {
        return medicineId;
    }

    public void setMedicineId(int medicineId) {
        this.medicineId = medicineId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getFrequency() {
        return frequency;
    }

    public void setFrequency(String frequency) {
        this.frequency = frequency;
    }

    public String getObservationDetail() {
        return observationDetail;
    }

    public void setObservationDetail(String observationDetail) {
        this.observationDetail = observationDetail;
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

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

}
