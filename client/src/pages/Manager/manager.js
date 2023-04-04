import React, { useEffect, useState } from "react";
import TextField from "@mui/material/TextField";
import "./manager.css";

import { getRequest, getRequestById, postRequest, deleteRequestById, putRequest } from "../../helpers/fetchers";

const Manager = () => {
  const [res, setRes] = useState("");
  const [args, setArgs] = useState("");

  useEffect(() => setArgs(""), [res])

  const getId = (id) => {
    try {
      let json = JSON.parse(args);
      console.log(json);
      return json[id];
    } catch (err) {
      setArgs(err);
      console.error(err);
    }
  }
  
  return (
    <div className="manager__container">
      <div className="manager__input">
        <div className="manager__input-left">
          <div className="manager__input-header">Client queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/clients") } >Select all clients</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/clients/${args}`, args)} >Select a client by NAS</div>
          <div className="query__button" onClick={(e) => postRequest(e, setRes, "/api/clients", args)} >Create a client record</div>
          <div className="query__button" onClick={(e) => putRequest(e, setRes, `/api/clients/${getId("nas_client")}`, args)} >Update a client record by NAS</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/clients/${args}`, args)} >Delete a client record by NAS</div>

          <div className="manager__input-header">Employee queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/employees") } >Select all employees</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/employees/${args}`, args)} >Select an employee by NAS</div>
          <div className="query__button" onClick={(e) => postRequest(e, setRes, "/api/employees", args)} >Create an employee record</div>
          <div className="query__button" onClick={(e) => putRequest(e, setRes, `/api/employees/${getId("employee_NAS")}`, args)} >Update an employee record by NAS</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/employees/${args}`, args)} >Delete a employee record by NAS</div>

          <div className="manager__input-header">Reservation queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/reservations") } >Select all reservations</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/reservations/${args}`, args)} >Select a reservation by ID</div>
          <div className="query__button" onClick={() => postRequest(setRes, "/api/reservations", args)} >Create a reservation record</div>
          <div className="query__button" onClick={() => putRequest(setRes, `/api/reservations/${getId("reservation_id")}`, args)} >Update a reservation record by ID</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/reservations/${args}`, args)} >Delete a reservation record by ID</div>

          <div className="manager__input-header">Rent queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/locations") } >Select all rents</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/locations/${args}`, args)} >Select a rent by ID</div>
          <div className="query__button" onClick={() => postRequest(setRes, "/api/locations", args)} >Create a rent record</div>
          <div className="query__button" onClick={() => putRequest(setRes, `/api/locations/${getId("reservation_id")}`, args)} >Update a rent record by ID</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/locations/${args}`, args)} >Delete a rent record by ID</div>
        
        </div>
        <div className="manager__input-right">
          <TextField
            label="Arguments"
            multiline
            fullWidth
            variant="filled"
            rows={24}
            size="large"
            value={args}
            onChange={(e) => setArgs(e.target.value)}
          />
          <div className="clear__button" onClick={() => setArgs("")}>Clear</div>
        </div>

      </div>
      <div className="manager__output">
        <TextField
          label="Response"
          multiline
          fullWidth
          disabled
          variant="filled"
          rows={24}
          size="large"
          value={res}
        />
        <div className="clear__button" onClick={() => setRes("")}>Clear</div>
      </div>
      
    </div>
  );
};

export default Manager;
