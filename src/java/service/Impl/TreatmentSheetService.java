/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import dal.TreatmentsheetDAO;
import model.TreatmentSheet;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import service.ITreatmentSheetService;

/**
 *
 * @author Legion
 */
public class TreatmentSheetService implements ITreatmentSheetService {

    TreatmentsheetDAO treatmentsheetDAO;

    public TreatmentSheetService() {
        treatmentsheetDAO = new TreatmentsheetDAO();
    }

    @Override
    public TreatmentSheet getTreatmentSheet(int treatmentSheetId) {
        return treatmentsheetDAO.getTreatmentSheet(treatmentSheetId);
    }

    @Override
    public boolean updateTreatmentSheet(int medicineId,int treatmentsheetId,String observationDetail, String frequency, Date startDate, int quantity) {
        return treatmentsheetDAO.updateTreatmentSheet(medicineId, treatmentsheetId, observationDetail, frequency, startDate, quantity);
    }
}
