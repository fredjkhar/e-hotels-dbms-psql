import React, { useState, useEffect } from "react";
import { query } from "../../helpers/_fetchers";
import Reservation from "../../components/EmployeeComponents/reservation/reservation";

import "./employee.css";

const Employee = () => {
  const [reservations, setReservations] = useState([]);
  const [clients, setClients] = useState([]);

  var arr = [];

  useEffect(() => {
    query(
      "SELECT * FROM reservation, client WHERE reservation.nas_client = client.nas_client ",
      "/api/reservations/custom/select",
      setReservations
    );
  }, []);

  useEffect(() => {
    reservations.forEach((reservation) => {
      const q = `SELECT * FROM client WHERE nas_client = ${reservation.nas_client}`;
      query(q, "/api/clients/custom/select", setClients);
      
      arr.push(clients);
    });
    console.log(arr);
  }, [reservations]);

  return (
    <div className="employee__wrapper">
      <div className="employee__container">
        {reservations && arr.length !== 0 && 
          reservations.map((reservation, index) => (
            <Reservation key={index} reservation={reservation} client={arr[index]}/>
          ))}
      </div>
    </div>
  );
};

export default Employee;
