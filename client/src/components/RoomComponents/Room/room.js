import React, { useState, useEffect } from "react";

import "./room.css";
import { query } from "../../../helpers/_fetchers";

const Room = (props) => {
  const { room } = props;

  const [hotels, setHotels] = useState([]);

  useEffect(() => {
    query(
      `SELECT * FROM hotel where hotel_id = ${room.hotel_id}`,
      "/api/sql/select",
      setHotels
    );
  }, [room]);

  const hotel = hotels[0];

  return (
    <div className="room__container">
      <img
        className="room__img"
        src={require(`../../../assets/images/room-${room.hotel_id}.jpg`)}
        alt="room pic"
      />
      <div className="room__right">
        <div className="room__top">
          <div className="room__name">
            {hotel && hotel.name}
            <div className="room__number">
              {" room "}
              {room.room_number}
            </div>
          </div>
        </div>

        <div className="room__bottom">
          <div className="room__details">
            <div className="room__location">
              <img
                className="hotel__location-icon"
                src={require("../../../assets/icons/location-50.png")}
                alt="location icon"
              />
              {hotel && hotel.city} , {hotel && hotel.country}
            </div>
            <div className="room__view">{room.view}</div>
            <div className="room__capacity"> Room for {room.capacity}</div>
          </div>

          <div className="reservation">
            <div className="reserve__btn" onClick={props.onReserveClick}>
              <span>Reserve for {room.price} $ per night </span>
              <img
                className="room__more-than"
                src={require("../../../assets/icons/more-than-24.png")}
                alt="more than icon"
              />
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Room;
