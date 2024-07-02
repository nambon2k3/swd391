/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import model.TreatmentSheet;
import service.TreatmentSheetService;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

/**
 *
 * @author Legion
 */
public class TreatmentSheetServiceImpl extends DBContext implements TreatmentSheetService {

    Connection connection;

    public TreatmentSheetServiceImpl() {
        try {
            connection = getConnection();
        } catch (Exception e) {
            System.out.println("Connect failed");
        }
    }

    @Override
    public TreatmentSheet getTreatmentSheet(int treatmentSheetId) {
        String query = "SELECT id, medicalRecordId, currentCondition, isDeleted, createdAt "
                + "FROM TreatmentSheet "
                + "WHERE id = ? AND isDeleted = 0";
        TreatmentSheet treatmentSheet = null;

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, treatmentSheetId);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    treatmentSheet = new TreatmentSheet();
                    treatmentSheet.setId(resultSet.getInt("id"));
                    treatmentSheet.setMedicalRecordId(resultSet.getInt("medicalRecordId"));
                    treatmentSheet.setCurrentCondition(resultSet.getString("currentCondition"));
                    treatmentSheet.setIsDeleted(resultSet.getBoolean("isDeleted"));
                    treatmentSheet.setCreatedAt(resultSet.getDate("createdAt"));
                }
            }
        } catch (SQLException e) {
            System.out.println("getTreatmentSheet: " + e.getMessage());
        }

        return treatmentSheet;
    }

    @Override
    public boolean updateTreatmentSheet(int medicineId,int treatmentsheetId,String observationDetail, String frequency, Date startDate, int quantity) {
        boolean success = false;

        try {
            String sql = "INSERT INTO MedicineAssignDetail (medicineId,[treatmentsheetId],observationDetail, quantity, frequency, startDate, status, isDeleted) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, medicineId);
            stmt.setInt(2, treatmentsheetId);
            stmt.setString(3, observationDetail);
            stmt.setInt(4, quantity);
            stmt.setString(5, frequency);
            stmt.setDate(6, new java.sql.Date(startDate.getTime()));
            stmt.setString(7, "Active"); 
            stmt.setBoolean(8, false); 

            int rowsInserted = stmt.executeUpdate();
            success = (rowsInserted > 0);
        } catch (SQLException e) {
            System.out.println("updateTreatmentSheet: " + e.getMessage());
        } 

        return success;
    }
}
