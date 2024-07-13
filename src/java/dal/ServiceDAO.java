/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Service;
import model.ServiceAssignDetail;

/**
 *
 * @author Legion
 */
public class ServiceDAO  extends DBContext{
    Connection connection;

    public ServiceDAO() {
        try {
            connection = getConnection();
        } catch (Exception e) {
            System.out.println("Connect failed");
        }
    }
    

    public List<ServiceAssignDetail> getAssignedServices(int treatmentSheetId) {
        List<ServiceAssignDetail> serviceAssignDetails = new ArrayList<>();
        String sql = "SELECT * FROM ServiceAssignDetail WHERE treatmentSheetId = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, treatmentSheetId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    ServiceAssignDetail detail = new ServiceAssignDetail();
                    detail.setId(rs.getInt("id"));
                    detail.setTreatmentsheetId(rs.getInt("treatmentSheetId"));
                    detail.setServiceId(rs.getInt("serviceId"));
                    detail.setNote(rs.getString("note"));
                    detail.setDiagnostic(rs.getString("diagnostic"));
                    detail.setStartDate(rs.getDate("startDate"));
                    detail.setObservationDetail(rs.getString("observationDetail"));
                    detail.setStatus(rs.getString("status"));
                    detail.setIsDeleted(rs.getBoolean("isDeleted"));
                    serviceAssignDetails.add(detail);
                }
            }
        } catch (SQLException e) {
            System.out.println("getAssignedServices: " + e.getMessage());
        }
        return serviceAssignDetails;
    }

    public Service getServiceById(int serviceId) {
        Service service = null;
        String sql = "SELECT * FROM [Service] WHERE id = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, serviceId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    service = new Service();
                    service.setId(rs.getInt("id"));
                    service.setMaterialName(rs.getString("materialName"));
                    service.setPrice(rs.getFloat("price"));
                    service.setCreatedAt(rs.getDate("createdAt"));
                    service.setIsDeleted(rs.getBoolean("isDeleted"));
                }
            }
        } catch (SQLException e) {
            System.out.println("getServiceById: " + e.getMessage());
        }
        return service;
    }
}
