/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import java.util.List;
import model.Medicine;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.MedicineAssignDetail;
import service.IMedicineService;

/**
 *
 * @author Legion
 */
public class MedicineService extends DBContext implements IMedicineService {

    Connection connection;

    public MedicineService() {
        try {
            connection = getConnection();
        } catch (Exception e) {
            System.out.println("Connect failed");
        }
    }

    @Override
    public List<MedicineAssignDetail> getAssignedMedicines(int treatmentSheetId) {
        List<MedicineAssignDetail> medicineAssignDetails = new ArrayList<>();
        String sql = "SELECT * FROM MedicineAssignDetail WHERE treatmentSheetId = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, treatmentSheetId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    MedicineAssignDetail detail = new MedicineAssignDetail();
                    detail.setId(rs.getInt("id"));
                    detail.setTreatmentsheetId(rs.getInt("treatmentSheetId"));
                    detail.setMedicineId(rs.getInt("medicineId"));
                    detail.setQuantity(rs.getInt("quantity"));
                    detail.setFrequency(rs.getString("frequency"));
                    detail.setObservationDetail(rs.getString("observationDetail"));
                    detail.setStartDate(rs.getDate("startDate"));
                    detail.setStatus(rs.getString("status"));
                    detail.setIsDeleted(rs.getBoolean("isDeleted"));
                    medicineAssignDetails.add(detail);
                }
            }
        } catch (SQLException e) {
            System.out.println("getAssignedMedicines: " + e.getMessage());
        }
        return medicineAssignDetails;
    }

    @Override
    public Medicine getMedicineById(int medicineId) {
        Medicine medicine = null;
        String sql = "SELECT * FROM Medicine WHERE id = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, medicineId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    medicine = new Medicine();
                    medicine.setId(rs.getInt("id"));
                    medicine.setMaterialName(rs.getString("materialName"));
                    medicine.setPrice(rs.getFloat("price"));
                    medicine.setQuantity(rs.getInt("quantity"));
                    medicine.setCreatedAt(rs.getDate("createdAt"));
                    medicine.setIsDeleted(rs.getBoolean("isDeleted"));
                }
            }
        } catch (SQLException e) {
            System.out.println("getMedicineById: " + e.getMessage());
        }
        return medicine;
    }

    @Override
    public boolean validate(int medicineId, int quantity) {
        boolean isValid = false;
        
        try {
            String sql = "SELECT quantity FROM Medicine WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, medicineId);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next()) {
                int availableQuantity = rs.getInt("quantity");
                isValid = (availableQuantity >= quantity);
            }
        } catch (SQLException e) {
            System.out.println("validate: " + e.getMessage());
        } 
        return isValid;
    }

    @Override
    public boolean updateQuantity(int medicineId, int quantity) {
        boolean success = false;
        
        try {
            String sql = "UPDATE Medicine SET quantity = quantity - ? WHERE id = ?";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, quantity);
            stmt.setInt(2, medicineId);
            
            int rowsUpdated = stmt.executeUpdate();
            success = (rowsUpdated > 0);
        } catch (SQLException e) {
            System.out.println("updateQuantity: " + e.getMessage());
        } 
        return success;
    }

    @Override
    public List<Medicine> getMedicines() {
        List<Medicine> medicines = new ArrayList<>();
        try {
            String sql = "SELECT id, materialName, price, quantity, createdAt FROM Medicine WHERE isDeleted = 0";
            PreparedStatement stmt = connection.prepareStatement(sql);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Medicine medicine = new Medicine();
                medicine.setId(rs.getInt("id"));
                medicine.setMaterialName(rs.getString("materialName"));
                medicine.setPrice(rs.getFloat("price"));
                medicine.setQuantity(rs.getInt("quantity"));
                medicine.setCreatedAt(rs.getDate("createdAt"));
                medicines.add(medicine);
            }
        } catch (SQLException e) {
            System.out.println("getMedicines: " + e.getMessage());
        } 

        return medicines;
    }

}
