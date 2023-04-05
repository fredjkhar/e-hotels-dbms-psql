import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import RoomsFilter from "../../components/RoomComponents/RoomsFilter/roomsFilter";
import Room from "../../components/RoomComponents/Room/room";

import "./rooms.css";

const Rooms = () => {
  const { rooms, hotels, hotelName, roomPrice, capacity, view } =
    useAppContext();
  const [displayedRooms, setDisplayedRooms] = useState(rooms);

  useEffect(() => {
    if (rooms && hotels) {
      // check if rooms and hotels are not null
      if (hotelName !== "All") {
        let _hotels = hotels.filter((hotel) => hotel.name === hotelName);
        setDisplayedRooms(
          rooms.filter(
            (room) =>
              room.hotel_id === _hotels[0].hotel_id &&
              room.price <= roomPrice &&
              //eslint-disable-next-line
              (capacity == 0 ? true : room.capacity == capacity) &&
              (view === "All" ? true : room.view === view)
          )
        );
      } else {
        setDisplayedRooms(
          rooms.filter(
            (room) =>
              room.price <= roomPrice &&
              // eslint-disable-next-line
              (capacity == 0 ? true : room.capacity == capacity) &&
              (view === "All" ? true : room.view === view)
          )
        );
      }
    }
  }, [roomPrice, capacity, view, hotelName, hotels, rooms]);

  return (
    <div className="rooms_wrapper">
      <RoomsFilter />
      <div className="rooms_container">
        {displayedRooms &&
          displayedRooms.map((room, index) => (
            <Room key={index} room={room} hotels={hotels} />
          ))}
      </div>
    </div>
  );
};

export default Rooms;
