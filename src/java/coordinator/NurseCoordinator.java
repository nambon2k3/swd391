/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package coordinator;

import service.Impl.MedicineServiceImpl;
import service.Impl.ServiceServiceImpl;
import service.Impl.SupplyServiceImpl;
import service.Impl.TreatmentSheetServiceImpl;
import service.MedicineService;
import service.ServiceService;
import service.SupplyService;
import service.TreatmentSheetService;

/**
 *
 * @author Legion
 */
public class NurseCoordinator {

    private MedicineService medicineService;
    private SupplyService supplyService;
    private ServiceService serviceService;
    private TreatmentSheetService treatmentSheetService;

    public NurseCoordinator() {
        medicineService = new MedicineServiceImpl();
        supplyService = new SupplyServiceImpl();
        serviceService = new ServiceServiceImpl();
        treatmentSheetService = new TreatmentSheetServiceImpl();
    }

    public MedicineService getMedicineService() {
        return medicineService;
    }

    public void setMedicineService(MedicineService medicineService) {
        this.medicineService = medicineService;
    }

    public SupplyService getSupplyService() {
        return supplyService;
    }

    public void setSupplyService(SupplyService supplyService) {
        this.supplyService = supplyService;
    }

    public ServiceService getServiceService() {
        return serviceService;
    }

    public void setServiceService(ServiceService serviceService) {
        this.serviceService = serviceService;
    }

    public TreatmentSheetService getTreatmentSheetService() {
        return treatmentSheetService;
    }

    public void setTreatmentSheetService(TreatmentSheetService treatmentSheetService) {
        this.treatmentSheetService = treatmentSheetService;
    }
    
    

}
