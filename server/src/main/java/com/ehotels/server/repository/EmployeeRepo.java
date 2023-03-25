package com.ehotels.server.repository;


import com.ehotels.server.model.Employee;

import java.util.List;

public interface EmployeeRepo {

     List<Employee> selectAll();

     Employee select(int employee_NAS);

     int insert(Employee employee);

     int update(Employee employee);

     int deleteAll();

     int delete(int employee_NAS);

}
