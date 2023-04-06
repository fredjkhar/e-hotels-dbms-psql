import React from "react";

import "./reservation";

const Reservation = (props) => {
  const res = props.reservation;
  const cli = props.client;
  console.log(cli)
  return (
    <div className="reservation__container">
      <div className="reservation__container-left">
        <div>
          <i>Reservation id: </i> {res.reservation_id}
        </div>
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
      <div className="reservation__container-right">
        <div>
          <i>Client NAS: </i> {res.nas_client}
        </div>
        <div>
          <i>First Name: </i> {cli.first_name}
        </div>
        <div>
          <i>Last Name: </i> {cli.last_name}
        </div>
        <div>
          <i>Age: </i> {cli.age}
        </div>
      </div>
    </div>
  );
};

export default Reservation;
