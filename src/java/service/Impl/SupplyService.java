/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import java.util.List;
import model.Supply;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.SupplyAssignDetail;
import service.ISupplyService;

/**
 *
 * @author Legion
 */
public class SupplyService extends DBContext implements ISupplyService {

    Connection connection;

    public SupplyService() {
        try {
            connection = getConnection();
        } catch (Exception e) {
            System.out.println("Connect failed");
        }
    }

    @Override
    public List<SupplyAssignDetail> getAssignedSupplies(int treatmentSheetId) {
        List<SupplyAssignDetail> supplyAssignDetails = new ArrayList<>();
        String sql = "SELECT * FROM SupplyAssignDetail WHERE treatmentSheetId = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, treatmentSheetId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    SupplyAssignDetail detail = new SupplyAssignDetail();
                    detail.setId(rs.getInt("id"));
                    detail.setTreatmentsheetId(rs.getInt("treatmentSheetId"));
                    detail.setSupplyId(rs.getInt("supplyId"));
                    detail.setQuantity(rs.getInt("quantity"));
                    detail.setStartDate(rs.getDate("startDate"));
                    detail.setStatus(rs.getString("status"));
                    detail.setObservationDetail(rs.getString("observationDetail"));
                    detail.setIsDeleted(rs.getBoolean("isDeleted"));
                    supplyAssignDetails.add(detail);
                }
            }
        } catch (SQLException e) {
            System.out.println("getAssignedSupplies: " + e.getMessage());
        }
        return supplyAssignDetails;
    }

    @Override
    public Supply getSupplyById(int supplyId) {
        Supply supply = null;
        String sql = "SELECT * FROM Supply WHERE id = ? AND isDeleted = 0";

        try (PreparedStatement ps = connection.prepareStatement(sql)) {
            ps.setInt(1, supplyId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    supply = new Supply();
                    supply.setId(rs.getInt("id"));
                    supply.setMaterialName(rs.getString("materialName"));
                    supply.setPrice(rs.getFloat("price"));
                    supply.setQuantity(rs.getInt("quantity"));
                    supply.setCreatedAt(rs.getDate("createdAt"));
                    supply.setIsDeleted(rs.getBoolean("isDeleted"));
                }
            }
        } catch (SQLException e) {
            System.out.println("getSupplyById: " + e.getMessage());
        }
        return supply;
    }

}
