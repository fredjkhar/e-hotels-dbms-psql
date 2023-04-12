import React, { useState, useEffect } from "react";
import { query } from "../../helpers/_fetchers";
import Reservation from "../../components/EmployeeComponents/reservation/reservation";
import Location from "../../components/EmployeeComponents/locations/location";
import PaymentForm from "../../components/EmployeeComponents/paymentForm/PaymentForm";

import "./employee.css";
import { useAppContext } from "../../context/contextProvider";

const Employee = (props) => {
  const { cookies } = useAppContext();

  const [employeeNas, setEmployeeNas] = useState(0);
  const [reservations, setReservations] = useState([]);
  const [locations, setLocations] = useState([]);
  const [selectedReservation, setSelectedReservation] = useState(null);

  useEffect(() => {
    const q = `SELECT employee_nas FROM employee WHERE email = '${cookies.credentials.email}' AND password = '${cookies.credentials.password}'`;
    query(q, "/api/sql/select", setEmployeeNas);
    updateReservations();
    updateLocations();
  }, []);

  const updateReservations = () => {
    const q = "SELECT * FROM reservation_view WHERE  room_number=100";
    query(q, "/api/sql/select", setReservations);
  };

  const updateLocations = () => {
    const q = "SELECT * FROM location_view";
    query(q, "/api/sql/select", setLocations);
  };

  const handlePaymentClick = (reservation, index) => {
    if (selectedReservation && selectedReservation.index === index) {
      setSelectedReservation(null);
    } else {
      setSelectedReservation({ reservation, index });
    }
  };

  return (
    <div className="employee__wrapper">
      <div className="employee__container">
        {props.route === "reservations"
          ? reservations.length !== 0 &&
            employeeNas[0].employee_nas &&
            reservations.map((reservation, index) => (
              <div key={index}>
              <Reservation
                key={index}
                reservation={reservation}
                employee_nas={employeeNas[0].employee_nas}
                updateReservations={updateReservations}
                onPaymentClick={()=> handlePaymentClick(reservation, index)}
              />
                {selectedReservation && selectedReservation.index === index && (
                <PaymentForm  />
              )}
              </div>
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
