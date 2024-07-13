/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.MedicineDAO;
import java.util.List;
import model.Medicine;
import model.MedicineAssignDetail;
import service.IMedicineService;

/**
 *
 * @author Legion
 */
public class MedicineService implements IMedicineService {

    MedicineDAO medicineDAO;

    public MedicineService() {
        medicineDAO = new MedicineDAO();
    }

    @Override
    public List<MedicineAssignDetail> getAssignedMedicines(int treatmentSheetId) {
        return medicineDAO.getAssignedMedicines(treatmentSheetId);
    }

    @Override
    public Medicine getMedicineById(int medicineId) {
        return medicineDAO.getMedicineById(medicineId);
    }

    @Override
    public boolean validate(int medicineId, int quantity) {
        return medicineDAO.validate(medicineId, quantity);
    }

    @Override
    public boolean updateQuantity(int medicineId, int quantity) {
        return medicineDAO.updateQuantity(medicineId, quantity);
    }

    @Override
    public List<Medicine> getMedicines() {
        return medicineDAO.getMedicines();
    }

}
