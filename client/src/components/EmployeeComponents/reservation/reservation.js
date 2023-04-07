import React from "react";
import { query } from "../../../helpers/_fetchers";

import "./reservation.css";

const Reservation = (props) => {
  const res = props.reservation;
  const employee_nas = props.nas;
  const setDeleteStatus = props.setDeleteStatus;
  const setCreateStatus = props.setCreateStatus;

  const createLoc = (nas_client, room_number, start_date, end_date) => {
    const q = `INSERT INTO location VALUES('${start_date}', '${end_date}', ${nas_client}, ${employee_nas}, ${room_number})`;
    query(q, "/api/sql", setCreateStatus);
  };

  const deleteRes = (nas_client, room_number, start_date, end_date) => {
    const q = `DELETE FROM reservation WHERE room_number = ${room_number} AND nas_client = ${nas_client} AND start_date = '${start_date}' AND end_date = '${end_date}'`;
    query(q, "/api/sql", setDeleteStatus);
  };

  return (
    <div className="reservation__container">
      <div className="reservation__container-left">
        <div>
          <i>Room number: </i> {res.room_number}
        </div>
        <div>
          <i>Start date: </i> {res.start_date}
        </div>
        <div>
          <i>End date: </i> {res.end_date}
        </div>
      </div>
      <div className="reservation__container-middle">
        <div>
          <i>Client NAS: </i> {res.nas_client}
        </div>
        <div>
          <i>First Name: </i> {res.first_name}
        </div>
        <div>
          <i>Last Name: </i> {res.last_name}
        </div>
        <div>
          <i>Age: </i> {res.age}
        </div>
      </div>
      <div className="reservation__container-right">
        <div
          className="check_in__btn"
          onClick={() =>
            createLoc(
              res.nas_client,
              res.room_number,
              res.start_date,
              res.end_date
            )
          }
        >
          <span>Check in</span>
        </div>
        <div
          className="delete__btn"
          onClick={() =>
            deleteRes(
              res.nas_client,
              res.room_number,
              res.start_date,
              res.end_date
            )
          }
        >
          <span>Cancel</span>
        </div>
      </div>
    </div>
  );
};

export default Reservation;
