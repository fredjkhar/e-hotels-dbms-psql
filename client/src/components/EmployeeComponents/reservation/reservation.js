import React from "react";
import { update } from "../../../helpers/_fetchers";
import "./reservation.css";

const Reservation = (props) => {
  const reservation = props.reservation;

  const createLocation = async (
    nas_client,
    room_number,
    start_date,
    end_date
  ) => {
    let q = `INSERT INTO location VALUES('${start_date}', '${end_date}', ${nas_client}, ${props.employee_nas}, ${room_number}, 0)`;
    await update(q, "/api/sql/update");

    q = `UPDATE reservation SET checked_in = 1 WHERE start_date = '${start_date}' 
    AND end_date = '${end_date}' AND nas_client = ${nas_client} AND room_number = ${room_number}`;
    await update(q, "/api/sql/update");

    await props.updateReservations();
  };

  return (
    <div className="reservation__container">
      <div className="reservation__container-left">
        <div>
          <i>Room number: </i> {reservation.room_number}
        </div>
        <div>
          <i>Start date: </i> {reservation.start_date}
        </div>
        <div>
          <i>End date: </i> {reservation.end_date}
        </div>
      </div>
      <div className="reservation__container-middle">
        <div>
          <i>Client NAS: </i> {reservation.nas_client}
        </div>
        <div>
          <i>First Name: </i> {reservation.first_name}
        </div>
        <div>
          <i>Last Name: </i> {reservation.last_name}
        </div>
        <div>
          <i>Age: </i> {reservation.age}
        </div>
      </div>
      <div className="reservation__container-right">
        <div
          className={
            "check_in__btn " + (reservation.checked_in !== 0 && "disabled")
          }
          onClick={() => {
            reservation.checked_in === 0 &&
              createLocation(
                reservation.nas_client,
                reservation.room_number,
                reservation.start_date,
                reservation.end_date
              );
          }}
        >
          <span>
            {reservation.checked_in === 0 ? "Check in" : "Checked in"}
          </span>
        </div>
        <div className="payment__btn" onClick={props.onPaymentClick}>
        <span>Insert payment </span>
      </div>
      </div>
    
    </div>
  );
};

export default Reservation;
