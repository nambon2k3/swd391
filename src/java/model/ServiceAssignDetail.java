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
public class ServiceAssignDetail {
    private int id;
    private int treatmentsheetId;
    private int serviceId;
    private String note;
    private String diagnostic;
    private Date startDate;
    private String observationDetail;
    private String status;
    private boolean isDeleted;

    // Constructors, getters, and setters
    public ServiceAssignDetail() {}

    public ServiceAssignDetail(int id, int treatmentsheetId, int serviceId, String note, String diagnostic, Date startDate, String observationDetail, String status, boolean isDeleted) {
        this.id = id;
        this.treatmentsheetId = treatmentsheetId;
        this.serviceId = serviceId;
        this.note = note;
        this.diagnostic = diagnostic;
        this.startDate = startDate;
        this.observationDetail = observationDetail;
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

    public int getServiceId() {
        return serviceId;
    }

    public void setServiceId(int serviceId) {
        this.serviceId = serviceId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getDiagnostic() {
        return diagnostic;
    }

    public void setDiagnostic(String diagnostic) {
        this.diagnostic = diagnostic;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public String getObservationDetail() {
        return observationDetail;
    }

    public void setObservationDetail(String observationDetail) {
        this.observationDetail = observationDetail;
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
