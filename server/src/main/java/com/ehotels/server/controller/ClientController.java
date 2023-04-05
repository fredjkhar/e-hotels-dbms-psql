package com.ehotels.server.controller;

import com.ehotels.server.model.Appliance;
import com.ehotels.server.model.Client;
import com.ehotels.server.service.ClientService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@CrossOrigin
@RestController
@RequestMapping("/api/clients") //Base URI
public class ClientController {

    private static final Logger logger = LoggerFactory.getLogger(ClientController.class);

    private final ClientService service;

    @Autowired
    public ClientController(ClientService service){
        Objects.requireNonNull(service);
        this.service = service;
    }

    @GetMapping
    public ResponseEntity<List<Client>> getAllClients(){
        List<Client> clients = service.selectAll();
        //Return 404 not found if no clients are found
        return clients.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(clients);
    }

    @GetMapping("/{NAS_client}")
    public ResponseEntity<Client> getClientsByNas(@PathVariable("NAS_client") int NAS_client){
        Client client = service.select(NAS_client);
        //Return 404 not found if no clients are found
        return client == null ? ResponseEntity.notFound().build() : ResponseEntity.ok(client);
    }

    @PostMapping
    public ResponseEntity<String> createClient(@RequestBody Client client){
        try{
            Objects.requireNonNull(client);
            service.insert(client);
            String message = String.format("%s has been added to Client repository", client);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch(Exception e){
            logger.error("Failed to create Client: {}", client, e);
            // Return a 500 Internal Server Error if server failed to create a client record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping
    public ResponseEntity<String> deleteAllClients(){
        try{
            int numDeleted = service.deleteAll();
            String message = String.format("Successfully deleted %d (all) clients from client", numDeleted);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        } catch (Exception e){
            logger.error("Failed to delete all clients", e);
            // Return a 500 Internal Server Error if server failed to delete all client records
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @DeleteMapping(path={"/{NAS_client}"})
    public ResponseEntity<String> deleteClientByNas(@PathVariable("NAS_client") int NAS_client){
        try{
            Client client = service.select(NAS_client);
            service.delete(NAS_client);
            String message = String.format("Successfully deleted %s from client", client);
            logger.info(message);
            //Return an "ok" response with the message
            return ResponseEntity.ok(message);

        } catch (Exception e){
            logger.error("Failed to delete client with NAS {}", NAS_client, e);
            // Return a 500 Internal Server Error if server failed to delete the client record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PutMapping(path = {"/{NAS_client}"})
    public ResponseEntity<String> updateClientByNas(@PathVariable("NAS_client") int NAS_client, @RequestBody Client client){
        try {
            Objects.requireNonNull(client);
            Objects.requireNonNull(service.select(NAS_client));

            if(client.getNAS_client() != NAS_client){
                client.setNAS_client(NAS_client);
            }

            service.update(client);
            String message = String.format("client with NAS %s has been updated", client);
            logger.info(message);

            //Return an "ok" response with the message
            return ResponseEntity.ok(message);
        }
        catch (Exception e){
            logger.error("Failed to update client with NAS {}",NAS_client, e);
            // Return a 500 Internal Server Error if server failed to UPDATE a client record
            return ResponseEntity.internalServerError().body(e.getMessage());
        }
    }

    @PostMapping(path = {"/custom/select"})
    public ResponseEntity<List<Client>> customApplianceControllerSelectQuery(@RequestBody String query) {
        List<Client> clients = null;
        try {
            Objects.requireNonNull(query);
            clients = service.customSelectQuery(query);
            return clients.isEmpty() ? ResponseEntity.notFound().build() : ResponseEntity.ok(clients);

        } catch (Exception e) {
            logger.error("Failed to execute select query: {}", query, e);
            // Return a 500 Internal Server Error if server failed to create an appliance record
            return ResponseEntity.internalServerError().body(clients);
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
