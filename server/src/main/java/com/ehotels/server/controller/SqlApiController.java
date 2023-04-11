package com.ehotels.server.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/sql")
public class SqlApiController {

    private final Logger logger = LoggerFactory.getLogger(SqlApiController.class);

    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public SqlApiController(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @PostMapping("/select")
    public ResponseEntity<List<Map<String, Object>>> executeSelectQuery(@RequestBody String sql) {
        try {
            Objects.requireNonNull(sql);
            return ResponseEntity.ok(jdbcTemplate.queryForList(sql));
        } catch (Exception e) {
            logger.error("Error executing SQL query: {}", sql, e);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error executing SQL query");
        }
    }

    @PostMapping("/update")
    public ResponseEntity<String> executeUpdateQuery(@RequestBody String sql) {
        try {
            Objects.requireNonNull(sql);
            return ResponseEntity.ok(String.valueOf(jdbcTemplate.update(sql)));
        } catch (Exception e) {
            logger.error("Error executing SQL query: {}", sql, e);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error executing SQL query");
        }
    }
}
