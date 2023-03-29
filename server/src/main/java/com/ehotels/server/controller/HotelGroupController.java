package com.ehotels.server.controller;

import com.ehotels.server.model.HotelGroup;
import com.ehotels.server.service.HotelGroupService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/*
* HotelGroupController is a Spring MVC controller for the HotelGroup Entity.
* It provides GET, PUT, DELETE, and POST endpoints for handling HTTP requests
* and responses for CRUD (Create, Read, Update, Delete) operations on
* HotelGroup model.
*/

@CrossOrigin
@RestController
@RequestMapping("/api/hotelGroups") //Base URI
public class HotelGroupController {

    private static final Logger logger = LoggerFactory.getLogger(HotelGroupController.class);

    // Auto-wires the HotelGroupService to the controller
    private final HotelGroupService service;

    @Autowired
    public HotelGroupController(HotelGroupService service) {
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<HotelGroup>> getAllHotelGroups() {
        List<HotelGroup> hotelGroups = service.selectAll();
        // Return a 404 Not Found response if no HotelGroups are found
        return hotelGroups.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(hotelGroups);
    }

    @GetMapping("/{id}")
    public ResponseEntity<HotelGroup> getHotelGroupById(@PathVariable("id") int id) {
        HotelGroup hotelGroup = service.select(id);
        // Return a 404 Not Found response if the HotelGroup is not found
        return hotelGroup == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(hotelGroup);
    }

    @PostMapping
    public ResponseEntity<String> createHotelGroup(@RequestBody HotelGroup hotelGroup) {
        try {
            Objects.requireNonNull(hotelGroup);
            service.insert(hotelGroup);
            String message = String.format("%s has been added to HotelGroup repository", hotelGroup);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to create hotelGroup: {}", hotelGroup, e);
            // Return a 500 Internal Server Error if server failed to create a hotelGroup record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllHotelGroups() {
        try {
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) hotelGroups from HotelGroups", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to delete all hotelGroups", e);
            // Return a 500 Internal Server Error if server failed to delete all hotelGroup records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path = {"/{id}"})
    public ResponseEntity<String> deleteHotelGroupById(@PathVariable("id") int id) {
        try {
            HotelGroup hotelGroup = service.select(id);
            service.delete(id);
            String message = String.format("Successfully deleted %s from HotelGroups", hotelGroup);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to delete hotelGroup with id {}", id, e);
            // Return a 500 Internal Server Error if server failed to delete a hotelGroup record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{id}"})
    public ResponseEntity<String> updateHotelGroupById(@PathVariable("id") int id, @RequestBody HotelGroup hotelGroup) {
        try {
            Objects.requireNonNull(hotelGroup);
            Objects.requireNonNull(service.select(id));

            if (hotelGroup.getId() != id) {
                hotelGroup.setId(id);
            }

            service.update(hotelGroup);
            String message = String.format("hotelGroup with id %s has been updated", id);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to update hotelGroup with id {}", id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a hotelGroup record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
