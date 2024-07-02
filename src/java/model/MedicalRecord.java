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
public class MedicalRecord {
    private int id;
    private int patientId;
    private int doctorId;
    private int nurseId;
    private String symptom;
    private String diagnosis;
    private String illnessHistory;
    private String treatmentMethod;
    private boolean isDeleted;
    private Date createdAt;

    // Constructors, getters, and setters
    public MedicalRecord() {}

    public MedicalRecord(int id, int patientId, int doctorId, int nurseId, String symptom, String diagnosis, String illnessHistory, String treatmentMethod, boolean isDeleted, Date createdAt) {
        this.id = id;
        this.patientId = patientId;
        this.doctorId = doctorId;
        this.nurseId = nurseId;
        this.symptom = symptom;
        this.diagnosis = diagnosis;
        this.illnessHistory = illnessHistory;
        this.treatmentMethod = treatmentMethod;
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

    public int getPatientId() {
        return patientId;
    }

    public void setPatientId(int patientId) {
        this.patientId = patientId;
    }

    public int getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(int doctorId) {
        this.doctorId = doctorId;
    }

    public int getNurseId() {
        return nurseId;
    }

    public void setNurseId(int nurseId) {
        this.nurseId = nurseId;
    }

    public String getSymptom() {
        return symptom;
    }

    public void setSymptom(String symptom) {
        this.symptom = symptom;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getIllnessHistory() {
        return illnessHistory;
    }

    public void setIllnessHistory(String illnessHistory) {
        this.illnessHistory = illnessHistory;
    }

    public String getTreatmentMethod() {
        return treatmentMethod;
    }

    public void setTreatmentMethod(String treatmentMethod) {
        this.treatmentMethod = treatmentMethod;
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
