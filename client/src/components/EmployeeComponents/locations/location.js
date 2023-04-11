import React from "react";
import { update } from "../../../helpers/_fetchers";
import "./location.css";

const Location = (props) => {
  const location = props.location;

  const updateLocation = async (room_number, start_date, end_date, nas_client) => {
    const q = `UPDATE location SET checked_out = 1 WHERE start_date = '${start_date}' 
    AND end_date = '${end_date}' AND nas_client = ${nas_client} AND room_number = ${room_number}`;
    await update(q, "/api/sql/update");
    
    await props.updateLocations();
  };

  return (
    <div className="location__container">
      <div className="location__container-left">
        <div>
          <i>Room number: </i> {location.room_number}
        </div>
        <div>
          <i>Start date: </i> {location.start_date}
        </div>
        <div>
          <i>End date: </i> {location.end_date}
        </div>
      </div>
      <div className="location__container-middle">
        <div>
          <i>Client NAS: </i> {location.nas_client}
        </div>
        <div>
          <i>First Name: </i> {location.first_name}
        </div>
        <div>
          <i>Last Name: </i> {location.last_name}
        </div>
        <div>
          <i>Age: </i> {location.age}
        </div>
      </div>
      <div className="location__container-right">
        <div
          className={
            "check_out__btn " + (location.checked_out === 1 && "disabled")
          }
          onClick={() => {
            if (location.checked_out !== 1) {
              updateLocation(
                location.room_number,
                location.start_date,
                location.end_date,
                location.nas_client
              );
            }
          }}
        >
          <span>
            {location.checked_out === 1 ? "Checked out" : "Check out"}
          </span>
        </div>
      </div>
    </div>
  );
};

export default Location;
