package com.ehotels.server.controller;

import com.ehotels.server.model.Reservation;
import com.ehotels.server.model.RoomAppliance;
import com.ehotels.server.service.RoomApplianceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/room_appliances") //Base URI
public class RoomApplianceController {

    private static final Logger logger = LoggerFactory.getLogger(RoomApplianceController.class);

    private final RoomApplianceService service;

    @Autowired
    public RoomApplianceController(RoomApplianceService service) {
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<RoomAppliance>> getAllRoomAppliances() {
        List<RoomAppliance> roomAppliances = service.selectAll();
        //Return 404 not found if no room appliances are found
        return roomAppliances.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(roomAppliances);
    }

    @GetMapping("/{room_number}/{appliance_id}")
    public ResponseEntity<RoomAppliance> getRoomApplianceByRoomAndApplianceId(@PathVariable("room_number") int room_number, @PathVariable("appliance_id") int appliance_id) {
        RoomAppliance roomAppliance = service.select(room_number, appliance_id);
        //Return 404 not found if no room appliance is found
        return roomAppliance == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(roomAppliance);
    }

    @PostMapping
    public ResponseEntity<String> createRoomAppliance(@RequestBody RoomAppliance roomAppliance) {
        try {
            Objects.requireNonNull(roomAppliance);
            service.insert(roomAppliance);
            String message = String.format("%s has been added to RoomAppliance repository", roomAppliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to create RoomAppliance: {}", roomAppliance, e);
            // Return a 500 Internal Server Error if server failed to create a RoomAppliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllRoomAppliances() {
        try {
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) room appliances from roomAppliances", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to delete all room appliances", e);
            // Return a 500 Internal Server Error if server failed to delete all room appliance records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path = {"/{room_number}/{appliance_id}"})
    public ResponseEntity<String> deleteRoomApplianceByRoomAndApplianceId(@PathVariable("room_number") int room_number, @PathVariable("appliance_id") int appliance_id) {
        try {
            RoomAppliance roomAppliance = service.select(room_number, appliance_id);
            service.delete(room_number, appliance_id);
            String message = String.format("Successfully deleted %s from roomappliances", roomAppliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e) {
            logger.error("Failed to delete roomappliance with room_number {} and appliance_id {}", room_number, appliance_id, e);
            // Return a 500 Internal Server Error if server failed to delete the roomappliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{room_number}/{appliance_id}"})
    public ResponseEntity<String> updateRoomApplianceByRoomAndApplianceId(@PathVariable("room_number") int room_number, @PathVariable("appliance_id") int appliance_id, @RequestBody RoomAppliance roomAppliance) {
        try {
            Objects.requireNonNull(roomAppliance);
            Objects.requireNonNull(service.select(room_number, appliance_id));

            if(roomAppliance.getRoom_number() != room_number){
                roomAppliance.setRoom_number(room_number);
            }
            if(roomAppliance.getAppliance_id() != appliance_id){
                roomAppliance.setAppliance_id(appliance_id);
            }

            service.update(roomAppliance);
            String message = String.format("RoomAppliance with room number %s and appliance ID %s has been updated", room_number, appliance_id);
            logger.info(message);

            // Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e) {
            logger.error("Failed to update RoomAppliance with room number {} and appliance ID {}", room_number, appliance_id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE RoomAppliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PostMapping(path = {"/custom/select"})
    public ResponseEntity<List<RoomAppliance>> customApplianceControllerSelectQuery(@RequestBody String query) {
        List<RoomAppliance> roomAppliance = null;
        try {
            Objects.requireNonNull(query);
            roomAppliance = service.customSelectQuery(query);
            return roomAppliance.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(roomAppliance);

        } catch (Exception e) {
            logger.error("Failed to execute select query: {}", query, e);
            // Return a 500 Internal Server Error if server failed to create an appliance record
            return ResponseEntity.internalServerError().body(roomAppliance);
        }
    }

    @PostMapping(path = {"/custom/update"})
    public ResponseEntity<String> customApplianceControllerUpdateQuery(@RequestBody String query) {
        try {
            Objects.requireNonNull(query);
            String message = String.format("query '%s' has been successfully executed with return message %s", query, service.customUpdateQuery(query));
            return ResponseEntity.ok(message);

        } catch (Exception e) {
            logger.error("Failed to execute the following query query: {}", query, e);
            // Return a 500 Internal Server Error if server failed to create an appliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}