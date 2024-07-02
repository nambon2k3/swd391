/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.Date;
import model.TreatmentSheet;

/**
 *
 * @author Legion
 */
public interface TreatmentSheetService {
    public TreatmentSheet getTreatmentSheet(int treatementSheetId);
    public boolean updateTreatmentSheet(int medicineId,int treatmentsheetId,String observationDetail, String frequence, Date startDate, int quantity);
}
