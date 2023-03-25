package com.ehotels.server.controller;

import com.ehotels.server.model.Hotel;
import com.ehotels.server.service.HotelService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

/*
 * HotelController is a Spring MVC controller for the Hotel Entity.
 * It provides GET, PUT, DELETE, and POST endpoints for handling HTTP requests
 * and responses for CRUD (Create, Read, Update, Delete) operations on
 * Hotel model.
 */
@RestController
@RequestMapping("/api/hotels") //Base URL
public class HotelController {

    private static final Logger logger = LoggerFactory.getLogger(HotelController.class);

    private final HotelService service;

    @Autowired
    public HotelController(HotelService service){
        Objects.requireNonNull(service);
        this.service = service;

    }

    @GetMapping
    public ResponseEntity<List<Hotel>> getAllHotels() {
        List<Hotel> hotels = service.selectAll();
        //Return 404 not found is no rooms are found
        return hotels.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(hotels);
    }

    @GetMapping("/{hotel_id}")
    public ResponseEntity<Hotel> getHotelByHotelId(@PathVariable("hotel_id") int hotel_id){
        Hotel hotel = service.select(hotel_id);
        //Return 404 not found is no hotels are found
        return hotel == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(hotel);
    }

    @PostMapping
    public ResponseEntity<String> createHotel(@RequestBody Hotel hotel){
        try{
            Objects.requireNonNull(hotel);
            service.insert(hotel);
            String message = String.format("%s has been added to Hotel repository", hotel);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Hotel: {}", hotel, e);
            // Return a 500 Internal Server Error if server failed to create a room record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllHotels(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) hotels from Hotels", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all hotels", e);
            // Return a 500 Internal Server Error if server failed to delete all hotel records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{hotel_id}"})
    public ResponseEntity<String> deleteHotelByHotelId(@PathVariable("hotel_id") int hotel_id){
        try{
            Hotel hotel = service.select(hotel_id);
            service.delete(hotel_id);
            String message = String.format("Successfully deleted %s from Hotels", hotel);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete hotel with hotel_id {}", hotel_id, e);
            // Return a 500 Internal Server Error if server failed to delete the hotel record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{hotel_id}"})
    public ResponseEntity<String> updateHotelByHotelId(@PathVariable("hotel_id") int hotel_id, @RequestBody Hotel hotel){
        try {
            Objects.requireNonNull(hotel);
            Objects.requireNonNull(service.select(hotel_id));

            if(hotel.getHotel_id() != hotel_id){
                hotel.setHotel_id(hotel_id);
            }

            service.update(hotel);
            String message = String.format("hotel with hotel_id %s has been updated", hotel);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update hotel with hotel_id {}", hotel_id, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a hotel record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

}
