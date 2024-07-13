/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import dal.SupplyDAO;
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
public class SupplyService implements ISupplyService {

    SupplyDAO supplyDAO;

    public SupplyService() {
        supplyDAO = new SupplyDAO();
    }

    @Override
    public List<SupplyAssignDetail> getAssignedSupplies(int treatmentSheetId) {
        return supplyDAO.getAssignedSupplies(treatmentSheetId);
    }

    @Override
    public Supply getSupplyById(int supplyId) {
        return supplyDAO.getSupplyById(supplyId);
    }

}
