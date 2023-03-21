package com.ehotels.server.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@CrossOrigin
@RestController
@RequestMapping("/api/hotels") //Base URL
public class HotelController {

    @GetMapping
    public ResponseEntity<String> getAllHotelGroups() {
        return null;
    }
}