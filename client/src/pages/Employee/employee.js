import React, { useState, useEffect } from "react";
import { query } from "../../helpers/_fetchers";
import Reservation from "../../components/EmployeeComponents/reservation/reservation";
import Location from "../../components/EmployeeComponents/locations/location";

import "./employee.css";
import { useAppContext } from "../../context/contextProvider";

const Employee = (props) => {
  const { cookies } = useAppContext();

  const [employeeNas, setEmployeeNas] = useState(0);
  const [reservations, setReservations] = useState([]);
  const [locations, setLocations] = useState([]);

  useEffect(() => {
    const q = `SELECT employee_nas FROM employee WHERE email = '${cookies.credentials.email}' AND password = '${cookies.credentials.password}'`;
    query(q, "/api/sql/select", setEmployeeNas);
    updateReservations();
    updateLocations();
  }, []);

  const updateReservations = () => {
    const q = "SELECT * FROM reservation_view";
    query(q, "/api/sql/select", setReservations);
  };

  const updateLocations = () => {
    const q = "SELECT * FROM location_view";
    query(q, "/api/sql/select", setLocations);
  };

  return (
    <div className="employee__wrapper">
      <div className="employee__container">
        {props.route === "reservations"
          ? reservations.length !== 0 &&
            employeeNas[0].employee_nas &&
            reservations.map((reservation, index) => (
              <Reservation
                key={index}
                reservation={reservation}
                employee_nas={employeeNas[0].employee_nas}
                updateReservations={updateReservations}
              />
            ))
          : locations.length !== 0 &&
            employeeNas[0].employee_nas &&
            locations.map((location, index) => (
              <Location
                key={index}
                location={location}
                employee_nas={employeeNas[0].employee_nas}
                updateLocations={updateLocations}
              />
            ))}
      </div>
    </div>
  );
};

export default Employee;
