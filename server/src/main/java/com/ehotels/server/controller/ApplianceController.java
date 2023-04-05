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
@RequestMapping("/api/commodites") //Base URI
public class CommoditeController {

    private static final Logger logger = LoggerFactory.getLogger(CommoditeController.class);

    private final ApplianceService service;

    @Autowired
    public CommoditeController(ApplianceService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Appliance>> getAllCommodites(){
        List<Appliance> appliances = service.selectAll();
        //Return 404 not found if no amenties are found
        return appliances.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(appliances);
    }

    @GetMapping("/{idComm}")
    public ResponseEntity<Appliance> getCommoditeById(@PathVariable("idComm") int idComm){
        Appliance appliance = service.select(idComm);
        //Return 404 not found if no appliance are found
        return appliance == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(appliance);
    }

    @PostMapping
    public ResponseEntity<String> createCommodite(@RequestBody Appliance appliance){
        try{
            Objects.requireNonNull(appliance);
            service.insert(appliance);
            String message = String.format("%s has been added to Appliance repository", appliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Appliance: {}", appliance, e);
            // Return a 500 Internal Server Error if server failed to create a appliance record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllCommodites(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) commodites from commodite", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all commodites", e);
            // Return a 500 Internal Server Error if server failed to delete all commodites records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{idComm}"})
    public ResponseEntity<String> deleteCommoditeById(@PathVariable("idComm") int idComm){
        try{
            Appliance appliance = service.select(idComm);
            service.delete(idComm);
            String message = String.format("Successfully deleted %s from appliance", appliance);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete commodite with Id {}", idComm, e);
            // Return a 500 Internal Server Error if server failed to delete the commodites record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{idComm}"})
    public ResponseEntity<String> updateCommoditeByNas(@PathVariable("idComm") int idComm, @RequestBody Appliance appliance){
        try {
            Objects.requireNonNull(appliance);
            Objects.requireNonNull(service.select(idComm));

            if(appliance.getIdComm() != idComm){
                appliance.setIdComm(idComm);
            }

            service.update(appliance);
            String message = String.format("commodites with NAS %s has been updated", appliance);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update commodites with NAS {}",idComm, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a comodite record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
