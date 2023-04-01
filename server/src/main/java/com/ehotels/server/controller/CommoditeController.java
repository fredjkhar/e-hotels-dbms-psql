package com.ehotels.server.controller;

import com.ehotels.server.model.Commodite;
import com.ehotels.server.service.CommoditeService;
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

    private final CommoditeService service;

    @Autowired
    public CommoditeController(CommoditeService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Commodite>> getAllCommodites(){
        List<Commodite> commodites = service.selectAll();
        //Return 404 not found if no amenties are found
        return commodites.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(commodites);
    }

    @GetMapping("/{idComm}")
    public ResponseEntity<Commodite> getCommoditeById(@PathVariable("idComm") int idComm){
        Commodite commodite = service.select(idComm);
        //Return 404 not found if no commodite are found
        return commodite == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(commodite);
    }

    @PostMapping
    public ResponseEntity<String> createCommodite(@RequestBody Commodite commodite){
        try{
            Objects.requireNonNull(commodite);
            service.insert(commodite);
            String message = String.format("%s has been added to Commodite repository", commodite);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Commodite: {}", commodite, e);
            // Return a 500 Internal Server Error if server failed to create a commodite record
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
            Commodite commodite = service.select(idComm);
            service.delete(idComm);
            String message = String.format("Successfully deleted %s from commodite", commodite);
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
    public ResponseEntity<String> updateCommoditeByNas(@PathVariable("idComm") int idComm, @RequestBody Commodite commodite){
        try {
            Objects.requireNonNull(commodite);
            Objects.requireNonNull(service.select(idComm));

            if(commodite.getIdComm() != idComm){
                commodite.setIdComm(idComm);
            }

            service.update(commodite);
            String message = String.format("commodites with NAS %s has been updated", commodite);
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
