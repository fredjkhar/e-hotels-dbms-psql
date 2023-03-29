package com.ehotels.server.controller;

import com.ehotels.server.model.Reservation;
import com.ehotels.server.service.ReservationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/reservations") //Base URL
public class ReservationController {

    private static final Logger logger = LoggerFactory.getLogger(ReservationController.class);

    private final ReservationService service;

    @Autowired
    public ReservationController(ReservationService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Reservation>> getAllReservations(){
        List<Reservation> reservations = service.selectAll();
        //Return 404 not found if no reservation are found
        return reservations.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(reservations);
    }

    @GetMapping("/{reservation_id}")
    public ResponseEntity<Reservation> getReservationById(@PathVariable("reservation_id") int reservation_id){
        Reservation reservation = service.select(reservation_id);
        //Return 404 not found if no reservations are found
        return reservation == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(reservation);
    }

    @PostMapping
    public ResponseEntity<String> createReservation(@RequestBody Reservation reservation){
        try{
            Objects.requireNonNull(reservation);
            service.insert(reservation);
            String message = String.format("%s has been added to Reservation repository", reservation);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Reservation: {}", reservation, e);
            // Return a 500 Internal Server Error if server failed to create a reservation record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllReservations(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) reservations from reservation", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all reservations", e);
            // Return a 500 Internal Server Error if server failed to delete all reservations records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{reservation_id}"})
    public ResponseEntity<String> deleteReservationById(@PathVariable("reservation_id") int reservation_id){
        try{
            Reservation reservation = service.select(reservation_id);
            service.delete(reservation_id);
            String message = String.format("Successfully deleted %s from reservation", reservation);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete reservation with Id {}", reservation_id, e);
            // Return a 500 Internal Server Error if server failed to delete the reservation record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{reservation_id}"})
    public ResponseEntity<String> updateReservationById(@PathVariable("reservation_id") int reservation_id, @RequestBody Reservation reservation){
        try {
            Objects.requireNonNull(reservation);
            Objects.requireNonNull(service.select(reservation_id));

            if(reservation.getReservation_id() != reservation_id){
                reservation.setReservation_id(reservation_id);
            }

            service.update(reservation);
            String message = String.format("reservation with Id %s has been updated", reservation);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update reservation with Id {}",reservation_id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a reservation record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }
}
