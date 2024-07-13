/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service.Impl;

import dal.DBContext;
import dal.ServiceDAO;
import java.util.List;
import model.Service;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.ServiceAssignDetail;
import service.IServiceService;
/**
 *
 * @author Legion
 */
public class ServiceService implements IServiceService {

    ServiceDAO serviceDAO;

    public ServiceService() {
        serviceDAO = new ServiceDAO();
    }

    @Override
    public List<ServiceAssignDetail> getAssignedServices(int treatmentSheetId) {
        return serviceDAO.getAssignedServices(treatmentSheetId);
    }

    @Override
    public Service getServiceById(int serviceId) {
        return serviceDAO.getServiceById(serviceId);
    }

    

}
