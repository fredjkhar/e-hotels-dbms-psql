package com.ehotels.server.controller;

import com.ehotels.server.model.Employee;
import com.ehotels.server.service.EmployeeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/employees") //Base URL
public class EmployeeController {

    private static final Logger logger = LoggerFactory.getLogger(EmployeeController.class);

    private final EmployeeService service;

    @Autowired
    public EmployeeController(EmployeeService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Employee>> getAllEmployees(){
        List<Employee> employees = service.selectAll();
        //Return 404 not found if no employees are found
        return employees.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(employees);
    }

    @GetMapping("/{employee_NAS}")
    public ResponseEntity<Employee> getEmployeeByNas(@PathVariable("employee_NAS") int employee_NAS){
        Employee employee = service.select(employee_NAS);
        //Return 404 not found if no employees are found
        return employee == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(employee);
    }

    @PostMapping
    public ResponseEntity<String> createEmployee(@RequestBody Employee employee){
        try{
            Objects.requireNonNull(employee);
            service.insert(employee);
            String message = String.format("%s has been added to Employee repository", employee);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Employee: {}", employee, e);
            // Return a 500 Internal Server Error if server failed to create an employee record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllEmployees(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) employees from employee", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all employees", e);
            // Return a 500 Internal Server Error if server failed to delete all employee records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{employee_NAS}"})
    public ResponseEntity<String> deleteEmployeeByNas(@PathVariable("employee_NAS") int employee_NAS){
        try{
            Employee employee = service.select(employee_NAS);
            service.delete(employee_NAS);
            String message = String.format("Successfully deleted %s from employee", employee);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete employee with NAS {}", employee_NAS, e);
            // Return a 500 Internal Server Error if server failed to delete the employee record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{employee_NAS}"})
    public ResponseEntity<String> updateEmployeeByNas(@PathVariable("employee_NAS") int employee_NAS, @RequestBody Employee employee){
        try {
            Objects.requireNonNull(employee);
            Objects.requireNonNull(service.select(employee_NAS));

            if(employee.getEmployee_NAS() != employee_NAS){
                employee.setEmployee_NAS(employee_NAS);
            }

            service.update(employee);
            String message = String.format("employee with NAS %s has been updated", employee);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update employee with NAS {}",employee_NAS, e);
            // Return a 500 Internal Server Error if server failed to UPDATE an employeerecord
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
