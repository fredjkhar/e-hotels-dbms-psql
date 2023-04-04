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
          <div className="query__button" onClick={() => postRequest(setRes, "/api/clients", args)} >Create a client record</div>
          <div className="query__button" onClick={() => putRequest(setRes, `/api/clients/${getId("nas_client")}`, args)} >Update a client record by NAS</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/clients/${args}`, args)} >Delete a client record by NAS</div>

          <div className="manager__input-header">Employee queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/employees") } >Select all employees</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/employees/${args}`, args)} >Select an employee by NAS</div>
          <div className="query__button" onClick={() => postRequest(setRes, "/api/employees", args)} >Create an employee record</div>
          <div className="query__button" onClick={() => putRequest(setRes, `/api/employees/${getId("employee_NAS")}`, args)} >Update an employee record by NAS</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/employees/${args}`, args)} >Delete a employee record by NAS</div>

          <div className="manager__input-header">Hotel queries</div>
          <div className="query__button" onClick={() => getRequest(setRes, "/api/hotels") } >Select all hotels</div>
          <div className="query__button" onClick={() => getRequestById(setRes, `/api/hotels/${args}`, args)} >Select an employee by id</div>
          <div className="query__button" onClick={() => postRequest(setRes, "/api/hotels", args)} >Create an hotel record</div>
          <div className="query__button" onClick={() => putRequest(setRes, `/api/hotels/${getId("employee_NAS")}`, args)} >Update a hotel record by id</div>
          <div className="query__button" onClick={() => deleteRequestById(setRes, `/api/hotels/${args}`, args)} >Delete a hotel record by id</div>
        
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
