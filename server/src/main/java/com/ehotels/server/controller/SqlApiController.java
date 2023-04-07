package com.ehotels.server.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

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

    @PostMapping
    public ResponseEntity<List<Map<String, Object>>> executeQuery(@RequestBody String sql) {
        try {
            Objects.requireNonNull(sql);
            List<Map<String, Object>> result = jdbcTemplate.queryForList(sql);
            return ResponseEntity.ok(result);
        } catch (Exception e) {
            logger.error("Error executing SQL query: {}", sql, e);
            throw new ResponseStatusException(HttpStatus.INTERNAL_SERVER_ERROR, "Error executing SQL query");
        }
    }
}
