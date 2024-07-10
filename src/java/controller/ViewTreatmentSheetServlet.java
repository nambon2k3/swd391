/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Medicine;
import model.MedicineAssignDetail;
import model.ServiceAssignDetail;
import model.SupplyAssignDetail;
import model.TreatmentSheet;
import service.Impl.MedicineService;
import service.Impl.ServiceService;
import service.Impl.SupplyService;
import service.Impl.TreatmentSheetService;
import service.IMedicineService;
import service.IServiceService;
import service.ISupplyService;
import service.ITreatmentSheetService;

/**
 *
 * @author Legion
 */
@WebServlet(name = "ViewTreatmentSheetServlet", urlPatterns = {"/view-treatment-sheet"})
public class ViewTreatmentSheetServlet extends HttpServlet {
    
    private IMedicineService medicineService;
    private ISupplyService supplyService;
    private IServiceService serviceService;
    private ITreatmentSheetService treatmentSheetService;
    
    
    @Override
    public void init() throws ServletException {
        medicineService = new MedicineService();
        supplyService = new SupplyService();
        serviceService = new ServiceService();
        treatmentSheetService = new TreatmentSheetService();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Request data
        int treatmentSheetId = Integer.parseInt(request.getParameter("treatmentSheetId"));

        // Request assigned data
        List<MedicineAssignDetail> assignedMedicines = medicineService.getAssignedMedicines(treatmentSheetId);
        List<SupplyAssignDetail> assignedSupplies = supplyService.getAssignedSupplies(treatmentSheetId);
        List<ServiceAssignDetail> assignedServices = serviceService.getAssignedServices(treatmentSheetId);
        List<Medicine> listMedicines = medicineService.getMedicines();
        TreatmentSheet treatmentSheet = treatmentSheetService.getTreatmentSheet(treatmentSheetId);
        
        // Setting attributes to request scope
        request.setAttribute("assignedMedicines", assignedMedicines);
        request.setAttribute("assignedSupplies", assignedSupplies);
        request.setAttribute("assignedServices", assignedServices);
        request.setAttribute("treatmentSheet", treatmentSheet);
        request.setAttribute("listMedicines", listMedicines);
        request.setAttribute("errMsg", request.getParameter("errMsg"));
        
        
        // Send response
        request.getRequestDispatcher("treatmentsheet.jsp").forward(request, response);
        
    }
}
