package com.ehotels.server.controller;

import com.ehotels.server.model.Location;
import com.ehotels.server.service.LocationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/locations") //Base URL
public class LocationController {

    private static final Logger logger = LoggerFactory.getLogger(LocationController.class);

    private final LocationService service;

    @Autowired
    public LocationController(LocationService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Location>> getAllLocations(){
        List<Location> locations = service.selectAll();
        //Return 404 not found if no locations are found
        return locations.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(locations);
    }

    @GetMapping("/{location_id}")
    public ResponseEntity<Location> getLocationById(@PathVariable("Location_id") int Location_id){
        Location location = service.select(Location_id);
        //Return 404 not found if no locations are found
        return location == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(location);
    }

    @PostMapping
    public ResponseEntity<String> createLocation(@RequestBody Location location){
        try{
            Objects.requireNonNull(location);
            service.insert(location);
            String message = String.format("%s has been added to Location repository", location);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Location: {}", location, e);
            // Return a 500 Internal Server Error if server failed to create a location record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllLocations(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) locations from location", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all locations", e);
            // Return a 500 Internal Server Error if server failed to delete all locations records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{location_id}"})
    public ResponseEntity<String> deleteLocationById(@PathVariable("location_id") int location_id){
        try{
            Location location = service.select(location_id);
            service.delete(location_id);
            String message = String.format("Successfully deleted %s from location", location);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete location with Id {}", location_id, e);
            // Return a 500 Internal Server Error if server failed to delete the location record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{location_id}"})
    public ResponseEntity<String> updateLocationById(@PathVariable("location_id") int location_id, @RequestBody Location location){
        try {
            Objects.requireNonNull(location);
            Objects.requireNonNull(service.select(location_id));

            if(location.getLocation_id() != location_id){
                location.setLocation_id(location_id);
            }

            service.update(location);
            String message = String.format("location with Id %s has been updated", location);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update location with Id {}",location_id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a location record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
