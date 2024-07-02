/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package service;

import java.util.List;
import model.Service;
import model.ServiceAssignDetail;

/**
 *
 * @author Legion
 */
public interface ServiceService {
    public List<ServiceAssignDetail> getAssignedServices(int treatementSheetId);
    public Service getServiceById(int serviceId);
    
}
