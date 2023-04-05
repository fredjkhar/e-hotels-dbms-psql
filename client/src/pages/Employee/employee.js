import React, { useEffect, useState } from "react";

import "./employee.css";

const Employee = () => {
  const BASE_URL = "http://localhost:8080/api";
  const [reservations, setReservations] = useState([]);
  const [clients, setClients] = useState([]);

  useEffect(() => {
    fetch(BASE_URL + "/reservations")
      .then((response) => response.json())
      .then((responseData) => setReservations(responseData))
      .catch((error) => console.error(error));

    fetch(BASE_URL + "/clients")
      .then((response) => response.json())
      .then((responseData) => setClients(responseData))
      .catch((error) => console.error(error));
  }, []);

  const getClient = (nas_client) => {
    let client = clients.filter((c) => c.nas_client === nas_client);
    return client[0].first_name + " " + client[0].last_name;
  };

  const setReservation = (reservation, index) => {
    return (
      <div key={index} className="employee__reservation">
        {reservation.reservation_id}
        {reservation.start_date}
        {reservation.end_date}
        {reservation.room_number}
        {reservation.room_number}
        {getClient(reservation.nas_client)}
      </div>
    );
  };

  return (
    <div className="employee__container">
      <div className="employee__reservation__container">
        {reservations.length !== 0 &&
          clients.length !== 0 &&
          reservations.map((reservation, index) =>
            setReservation(reservation, index)
          )}
      </div>
    </div>
  );
};

export default Employee;
