import React, { useState, useEffect } from "react";
import { query } from "../../helpers/_fetchers";
import Reservation from "../../components/EmployeeComponents/reservation/reservation";

import "./employee.css";
import { useAppContext } from "../../context/contextProvider";

const Employee = () => {
  const { nas } = useAppContext();
  const [reservations, setReservations] = useState([]);
  const [deleteStatus, setDeleteStatus] = useState();
  const [createStatus, setCreateStatus] = useState();

  useEffect(() => {
    query("SELECT * FROM reservation_view", "/api/sql", setReservations);
  }, [deleteStatus, createStatus]);

  return (
    <div className="employee__wrapper">
      <div className="employee__container">
        {reservations &&
          reservations.map((reservation, index) => (
            <Reservation
              key={index}
              reservation={reservation}
              setDeleteStatus={setDeleteStatus}
              setCreateStatus={setCreateStatus}
              nas={nas[0].employee_nas}
            />
          ))}
      </div>
    </div>
  );
};

export default Employee;
