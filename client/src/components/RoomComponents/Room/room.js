import React from "react";
import KingBedIcon from "@mui/icons-material/KingBed";

import "./room.css"

const Room = (props) => {
  const { room, hotels } = props;
  const hotel = hotels.find((hotel) => hotel.hotel_id === room.hotel_id);
  
  return (
    <div className="room__container">
      <div className="room__details">
        <div className="room__name">
          <KingBedIcon fontSize="inherit" color="inherit" />
          {room.room_number}
        </div>
        {hotel && (
          <div className="room__hotel__name">{hotel.name}</div>
        )}
      </div>
      <div className="room__capacity">
        Capacity: {room.capacity}
      </div>
      <div className="room__view">
          {room.view}
        </div>
    </div>
  );
};

export default Room;

