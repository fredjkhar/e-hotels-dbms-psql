package com.ehotels.server.controller;

import com.ehotels.server.model.Appliance;
import com.ehotels.server.service.ApplianceService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/appliances") //Base URI
public class ApplianceController {

    private static final Logger logger = LoggerFactory.getLogger(ApplianceController.class);

    private final ApplianceService service;

    @Autowired
    public ApplianceController(ApplianceService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Appliance>> getAllAppliances(){
        List<Appliance> appliances = service.selectAll();
        //Return 404 not found if no appliances are found
        return appliances.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(appliances);
    }

    @GetMapping("/{idComm}")
    public ResponseEntity<Appliance> getAppliancesById(@PathVariable("appliance_id") int appliance_id){
        Appliance appliance = service.select(appliance_id);
        //Return 404 not found if no appliance are found
        return appliance == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(appliance);
    }

    @PostMapping
    public ResponseEntity<String> createAppliance(@RequestBody Appliance appliance){
        try{
            Objects.requireNonNull(appliance);
            service.insert(appliance);
            String message = String.format("%s has been added to Appliance repository", appliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Appliance: {}", appliance, e);
            // Return a 500 Internal Server Error if server failed to create an appliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllAppliances(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) appliances from appliances", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all appliances", e);
            // Return a 500 Internal Server Error if server failed to delete all appliances records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{appliance_id}"})
    public ResponseEntity<String> deleteAppliancesById(@PathVariable("appliance_id") int appliance_id){
        try{
            Appliance appliance = service.select(appliance_id);
            service.delete(appliance_id);
            String message = String.format("Successfully deleted %s from appliance", appliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete appliance with appliance_id {}", appliance_id, e);
            // Return a 500 Internal Server Error if server failed to delete the appliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{appliance_id}"})
    public ResponseEntity<String> updateAppliancesById(@PathVariable("appliance_id") int appliance_id, @RequestBody Appliance appliance){
        try {
            Objects.requireNonNull(appliance);
            Objects.requireNonNull(service.select(appliance_id));

            if(appliance.getAppliance_id() != appliance_id){
                appliance.setAppliance_id(appliance_id);
            }

            service.update(appliance);
            String message = String.format("appliance with ID %s has been updated", appliance);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update appliances with id {}",appliance_id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE appliances record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
