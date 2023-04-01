package com.ehotels.server.service;

import com.ehotels.server.model.Employee;
import com.ehotels.server.repository.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


import java.util.List;
@Repository
public class EmployeeService implements EmployeeRepo {

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public EmployeeService(JdbcTemplate jdbcTemplate){this.jdbcTemplate = jdbcTemplate;}

    @Override
    public List<Employee> selectAll() {
        String query = "SELECT * from employee";
        return jdbcTemplate.query(query, BeanPropertyRowMapper.newInstance(Employee.class));
    }

    @Override
    public Employee select(int employee_NAS) {
        String query = "SELECT * from employee WHERE employee_NAS=?";
        return jdbcTemplate.queryForObject(query, BeanPropertyRowMapper.newInstance(Employee.class), employee_NAS);
    }

    @Override
    public int insert(Employee employee) {
        String query = "INSERT INTO employee (employee_NAS, last_name, first_name, street_number, street, city, province, country, postal_code, salary, phone_number, email, role, overtime, hotel_id)"+
                "VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(query, employee.getEmployee_NAS(), employee.getLast_name(), employee.getFirst_name(), employee.getStreet_number(), employee.getStreet(), employee.getCity(), employee.getProvince(), employee.getCountry(), employee.getPostal_code(), employee.getSalary(), employee.getPhone_number(), employee.getEmail(), employee.getRole(), employee.getOvertime(), employee.getHotel_id());
    }

    @Override
    public int update(Employee employee) {
        String query = "UPDATE employee SET last_name=?, first_name=?, street_number=?, street=?, city=?, province=?, country=?, postal_code=?, salary=?, phone_number=?, email=?, role=?, overtime=?, hotel_id=?, WHERE employee_NAS=?";
        return jdbcTemplate.update(query, employee.getLast_name(), employee.getFirst_name(), employee.getStreet_number(), employee.getStreet(), employee.getCity(), employee.getProvince(), employee.getCountry(), employee.getPostal_code(), employee.getSalary(), employee.getPhone_number(), employee.getEmail(), employee.getRole(), employee.getOvertime(), employee.getHotel_id(), employee.getEmployee_NAS());
     }

    @Override
    public int deleteAll() {
        String query = "DELETE FROM employee";
        return jdbcTemplate.update(query);
    }

    @Override
    public int delete(int employee_NAS) {
        String query = "DELETE FROM employee where employee_NAS=?";
        return jdbcTemplate.update(query, employee_NAS);
    }
}
