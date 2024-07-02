/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Legion
 */
public class Bed {
    private int id;
    private int roomId;
    private boolean isDeleted;
    private Integer patientId; // Using Integer to allow null values

    // Constructors, getters, and setters
    public Bed() {}

    public Bed(int id, int roomId, boolean isDeleted, Integer patientId) {
        this.id = id;
        this.roomId = roomId;
        this.isDeleted = isDeleted;
        this.patientId = patientId;
    }

    // Getters and setters for each attribute

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public boolean isIsDeleted() {
        return isDeleted;
    }

    public void setIsDeleted(boolean isDeleted) {
        this.isDeleted = isDeleted;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }
    
}
