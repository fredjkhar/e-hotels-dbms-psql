import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import RoomsFilter from "../../components/RoomComponents/RoomsFilter/roomsFilter";
import Room from "../../components/RoomComponents/Room/room";
import ReservationForm from "../../components/RoomComponents/ReservationForm/ReservationForm";
import { query } from "../../helpers/_fetchers";

import "./rooms.css";

const Rooms = () => {
  const { hotelName, roomPrice, capacity, view, areaName, startDate, endDate} = useAppContext();
  const [rooms, setRooms] = useState([]);
  const [selectedRoom, setSelectedRoom] = useState(null);

   //AreaName is of the following form: "Vancouver, Canada", "San Francisco, USA",... or "All"
   const city =
   areaName !== "All" ? areaName.substring(0, areaName.indexOf(", ")) : "";
 const country =
   areaName !== "All"
     ? areaName.substring(areaName.indexOf(", ") + 2, areaName.length)
     : "";

  const handleReserveClick = (room, index) => {
    if (selectedRoom && selectedRoom.index === index) {
      setSelectedRoom(null);
    } else {
      setSelectedRoom({ room, index });
    }
  };

  useEffect(() => {
    let q = `SELECT * FROM room WHERE price <= ${roomPrice}`;
    if (capacity !== 0) q = q + ` AND capacity = ${capacity}`;
    if (view !== "All") q = q + ` AND view = '${view}'`;
    if (hotelName !== "All") q = q + ` AND EXISTS (SELECT * FROM hotel WHERE hotel.hotel_id = room.hotel_id AND hotel.name = '${hotelName}')`;
    if (areaName !== "All") q = q +  ` AND EXISTS (SELECT * FROM hotel Where hotel.hotel_id = room.hotel_id AND hotel.city='${city}' AND hotel.country='${country}' )`;
    if(startDate !== "" && endDate !=="") q = q + ` AND NOT  EXISTS (
      SELECT *
      FROM reservation
      WHERE reservation.room_number = room.room_number 
      AND reservation.start_date <= '${endDate}' 
      AND reservation.end_date >= '${startDate}'
    )`;
    query(q, "/api/sql", setRooms);
  }, [roomPrice, capacity, view, hotelName, areaName, startDate, endDate]);

  return (
    <div className="rooms__wrapper">
        <RoomsFilter />  
      <div className="rooms__container">
        {rooms && rooms.length > 0 &&
          rooms.map((room, index) => (
            <div key={index}>
              <Room
                key={index}
                room={room}
                onReserveClick={() => handleReserveClick(room, index)}
              />
              {selectedRoom && selectedRoom.index === index && (
                <ReservationForm room={selectedRoom.room} />
              )}
            </div>
          ))}
      </div>
    </div>
  );
};

export default Rooms;
