package com.ehotels.server.controller;

import com.ehotels.server.model.Room;
import com.ehotels.server.model.RoomAppliance;
import com.ehotels.server.service.RoomService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/rooms") //Base URI
public class RoomController {

    private static final Logger logger = LoggerFactory.getLogger(RoomController.class);

    private final RoomService service;

    @Autowired
    public RoomController(RoomService service){
        Objects.requireNonNull(service);
        this.service = service;

    }

    @GetMapping
    public ResponseEntity<List<Room>> getAllRooms() {
        List<Room> rooms = service.selectAll();
        //Return 404 not found if no rooms are found
        return rooms.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(rooms);
    }

    @GetMapping("/{room_number}")
    public ResponseEntity<Room> getRoomByNumber(@PathVariable("room_number") int room_number){
        Room room = service.select(room_number);
        //Return 404 not found is no rooms are found
        return room == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(room);
    }

    @PostMapping
    public ResponseEntity<String> createRoom(@RequestBody Room room){
        try{
            Objects.requireNonNull(room);
            service.insert(room);
            String message = String.format("%s has been added to Room repository", room);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Room: {}", room, e);
            // Return a 500 Internal Server Error if server failed to create a room record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllRooms(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) rooms from room", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all rooms", e);
            // Return a 500 Internal Server Error if server failed to delete all room records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{room_number}"})
    public ResponseEntity<String> deleteRoomByNumber(@PathVariable("room_number") int room_number){
        try{
            Room room = service.select(room_number);
            service.delete(room_number);
            String message = String.format("Successfully deleted %s from Rooms", room);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete room with number {}", room_number, e);
            // Return a 500 Internal Server Error if server failed to delete the room record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{room_number}"})
    public ResponseEntity<String> updateRoomByNumber(@PathVariable("room_number") int room_number, @RequestBody Room room){
        try {
            Objects.requireNonNull(room);
            Objects.requireNonNull(service.select(room_number));

            if(room.getRoom_number() != room_number){
                room.setRoom_Number(room_number);
            }

            service.update(room);
            String message = String.format("room with room_number %s has been updated", room);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update room with number {}", room_number, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a room record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PostMapping(path = {"/custom/select"})
    public ResponseEntity<List<Room>> customApplianceControllerSelectQuery(@RequestBody String query) {
        List<Room> room = null;
        try {
            Objects.requireNonNull(query);
            room = service.customSelectQuery(query);
            return room.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(room);

        } catch (Exception e) {
            logger.error("Failed to execute select query: {}", query, e);
            // Return a 500 Internal Server Error if server failed to create an appliance record
            return ResponseEntity.internalServerError().body(room);
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
