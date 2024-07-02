/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.List;
import model.Supply;
import model.SupplyAssignDetail;

/**
 *
 * @author Legion
 */
public interface SupplyService {
    public List<SupplyAssignDetail> getAssignedSupplies(int treatementSheetId);
    public Supply getSupplyById(int supplyId);
}
