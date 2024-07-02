<%-- 
    Document   : advisor-dashboard
    Created on : Jun 22, 2024, 2:19:14 PM
    Author     : Legion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Homepage</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>


        <link rel="stylesheet" href="style.css">
    </head>

    <body>
        <div class="container-fluid">
            <div class="row d-flex bg-light border justify-content-between align-items-center vh-6">
                <div class="col-1">
                    <span>CMS</span>
                </div>
                <div class="dropdown col-1" style="text-align: right;">
                    <button class="btn dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class='bx bxs-user'></i>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item border-bottom d-flex justify-content-start align-items-center" href="#">
                                <i class='bx bxs-user' style="margin-right: 20px;"></i><span>User Profile</span></a></li>
                        <li><a class="dropdown-item d-flex justify-content-start align-items-center" href="logout"><i
                                    class='bx bx-log-in' style="margin-right: 20px;"></i>Logout</a></li>
                    </ul>
                </div>
            </div>
            <div class="row d-flex vh-100">
                <div class="col-2 bg-light border-end p-0">
                    <div class="d-flex flex-column mb-3">
                        <a href="view-treatment-sheet?treatmentSheetId=2" class="p-3 border-bottom d-flex justify-content-start align-items-center text-decoration-none"><i class='bx bx-table mr-10'></i>Use Case Demo</a>
                    </div>
                </div>
                <div class="col-10 p-4">
                    <div class="row">
                        <div class="col-12">
                            <div class="card mt-4">
                                <div class="card-header">
                                    Treatment Sheet Detail
                                </div>
                                
                                <div class="card-body">
                                    <div>
                                        Current: ${treatmentSheet.currentCondition}
                                    </div>
                                    <div class="d-flex justify-content-between  mb-2">
                                        <h2>Assigned Medicines</h2>
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#AssignMedicineModal">Assign Medicine</button>
                                    </div>
                                        <p class="text-danger">${errMsg eq 'null' ? '' : errMsg}</p>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Medicine ID</th>
                                                <th>Quantity</th>
                                                <th>Frequency</th>
                                                <th>Start Date</th>
                                                <th>Status</th>
                                                <!-- Add more headers as needed -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="medicine" items="${assignedMedicines}">
                                                <tr>
                                                    <td>${medicine.id}</td>
                                                    <td>${medicine.medicineId}</td>
                                                    <td>${medicine.quantity}</td>
                                                    <td>${medicine.frequency}</td>
                                                    <td>${medicine.startDate}</td>
                                                    <td>${medicine.status}</td>
                                                    <!-- Add more cells as needed -->
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>

                                    <h2>Assigned Supplies</h2>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Treatment Sheet ID</th>
                                                <th>Supply ID</th>
                                                <th>Quantity</th>
                                                <th>Start Date</th>
                                                <th>Status</th>
                                                <!-- Add more headers as needed -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="supply" items="${assignedSupplies}">
                                                <tr>
                                                    <td>${supply.id}</td>
                                                    <td>${supply.treatmentsheetId}</td>
                                                    <td>${supply.supplyId}</td>
                                                    <td>${supply.quantity}</td>
                                                    <td>${supply.startDate}</td>
                                                    <td>${supply.status}</td>
                                                    <!-- Add more cells as needed -->
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>

                                    <h2>Assigned Services</h2>
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Treatment Sheet ID</th>
                                                <th>Service ID</th>
                                                <th>Note</th>
                                                <th>Diagnostic</th>
                                                <th>Start Date</th>
                                                <th>Status</th>
                                                <!-- Add more headers as needed -->
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="service" items="${assignedServices}">
                                                <tr>
                                                    <td>${service.id}</td>
                                                    <td>${service.treatmentsheetId}</td>
                                                    <td>${service.serviceId}</td>
                                                    <td>${service.note}</td>
                                                    <td>${service.diagnostic}</td>
                                                    <td>${service.startDate}</td>
                                                    <td>${service.status}</td>
                                                    <!-- Add more cells as needed -->
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!-- The Modal -->
        <div class="modal fade" id="AssignMedicineModal">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">

                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Assign Medicine</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal Body -->
                    <div class="modal-body">
                        <form action="assign-medicine" method="post">
                            <div class="form-group">
                                <label for="treatmentsheetId">Treatment Sheet ID:</label>
                                <input type="number" class="form-control" id="treatmentsheetId" name="treatmentsheetId" value="${treatmentSheet.id}" readonly>
                            </div>
                            <div class="form-group">
                                <label for="medicineId">Medicine</label>
                                <select class="form-select" id="medicineId" name="medicineId" required>
                                    <c:forEach items="${listMedicines}" var="medicine"> 
                                        <option value="${medicine.id}">${medicine.materialName}</option>
                                    </c:forEach>
                                    
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="quantity">Quantity:</label>
                                <input type="number" class="form-control" id="quantity" name="quantity" min="1" oninput="valid(this)" required>
                            </div> 
                            <div class="form-group">
                                <label for="frequency">Frequency:</label>
                                <input type="text" class="form-control" id="frequency" name="frequency" required>
                            </div>
                            <div class="form-group">
                                <label for="observationDetail">Observation Detail:</label>
                                <textarea class="form-control" id="observationDetail" name="observationDetail" required></textarea>
                            </div>
                            <div class="form-group">
                                <label for="startDate">Start Date:</label>
                                <input type="date" class="form-control" id="startDate" name="startDate" required>
                            </div>
                            <div class="form-group" style="display: none">
                                <label for="status">Status:</label>
                                <select class="form-control" id="status" name="status" required>
                                    <option value="Active" selected>Active</option>
                                    <option value="Inactive">Inactive</option>
                                </select>
                            </div>
                            <button type="submit" class="btn btn-primary">Assign Medicine</button>
                        </form>
                    </div>

                    <!-- Modal Footer -->
                    <div class="modal-footer">

                        <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                    </div>

                </div>
            </div>
        </div>


        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
        
        <script>
            function valid(input) {
                if(input.value  < 0) {input.value = 1; }
            }
        </script>
    </body>

</html>
