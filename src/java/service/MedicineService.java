/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.List;
import model.Medicine;
import model.MedicineAssignDetail;

/**
 *
 * @author Legion
 */
public interface MedicineService {
    public List<MedicineAssignDetail> getAssignedMedicines(int treatementSheetId);
    public Medicine getMedicineById(int medicineId);
    public boolean validate(int medicineId, int quantity);
    public boolean updateQuantity(int medicineId, int quantity);
    public List<Medicine> getMedicines();
}
