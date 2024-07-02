/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import coordinator.NurseCoordinator;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Legion
 */
@WebServlet(name = "AssignMedicineServlet", urlPatterns = {"/assign-medicine"})
public class AssignMedicineServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int medicineId = Integer.parseInt(request.getParameter("medicineId"));
        int treatmentsheetId = Integer.parseInt(request.getParameter("treatmentsheetId"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String frequency = request.getParameter("frequency");
        String observationDetail = request.getParameter("observationDetail");
        String startDate = request.getParameter("startDate");

        NurseCoordinator nurseCoordinator = new NurseCoordinator();

        String ergMsg = null;

        boolean isValid = nurseCoordinator.getMedicineService().validate(medicineId, quantity);
        if (!isValid) {
            ergMsg = "Not enough quantity";
            response.sendRedirect("view-treatment-sheet?errMsg=" + ergMsg+ "&treatmentSheetId=" + treatmentsheetId);
            return;
        }
        boolean isUpdatedQuantity = nurseCoordinator.getMedicineService().updateQuantity(medicineId, quantity);
        if (!isUpdatedQuantity) {
            ergMsg = "Update quantity failed!";
            response.sendRedirect("view-treatment-sheet?errMsg=" + ergMsg+ "&treatmentSheetId=" + treatmentsheetId);
            return;
        }
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        try {
            boolean isUpdatedTreatmentSheet = nurseCoordinator.getTreatmentSheetService().updateTreatmentSheet(medicineId, treatmentsheetId, observationDetail, frequency, format.parse(startDate), quantity);
            if (!isUpdatedTreatmentSheet) {
                ergMsg = "Update treatment sheet failed!";
                response.sendRedirect("view-treatment-sheet?errMsg=" + ergMsg + "&treatmentSheetId=" + treatmentsheetId);
                return;
            }
        } catch (ParseException ex) {
            ergMsg = "Update treatment sheet failed!";
            response.sendRedirect("view-treatment-sheet?errMsg=" + ergMsg+ "&treatmentSheetId=" + treatmentsheetId);
            return;
        }
        response.sendRedirect("view-treatment-sheet?errMsg=" + ergMsg+ "&treatmentSheetId=" + treatmentsheetId);
    }

}
