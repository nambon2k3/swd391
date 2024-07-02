/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import coordinator.NurseCoordinator;
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

/**
 *
 * @author Legion
 */
@WebServlet(name = "ViewTreatmentSheetServlet", urlPatterns = {"/view-treatment-sheet"})
public class ViewTreatmentSheetServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Request data
        int treatmentSheetId = Integer.parseInt(request.getParameter("treatmentSheetId"));
        
        NurseCoordinator nurseCoordinator = new NurseCoordinator();
        
        // Request assigned data
        List<MedicineAssignDetail> assignedMedicines = nurseCoordinator.getMedicineService().getAssignedMedicines(treatmentSheetId);
        List<SupplyAssignDetail> assignedSupplies = nurseCoordinator.getSupplyService().getAssignedSupplies(treatmentSheetId);
        List<ServiceAssignDetail> assignedServices = nurseCoordinator.getServiceService().getAssignedServices(treatmentSheetId);
        List<Medicine> listMedicines = nurseCoordinator.getMedicineService().getMedicines();
        TreatmentSheet treatmentSheet = nurseCoordinator.getTreatmentSheetService().getTreatmentSheet(treatmentSheetId);
        
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
