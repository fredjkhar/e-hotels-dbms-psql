import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import RoomsFilter from "../../components/RoomComponents/RoomsFilter/roomsFilter";
import Room from "../../components/RoomComponents/Room/room";
import ReservationForm from "../../components/RoomComponents/ReservationForm/ReservationForm";
import { query } from "../../helpers/_fetchers";

import "./rooms.css";

const PAGE_SIZE = 50;

const Rooms = () => {
  const {
    hotelName,
    roomPrice,
    capacity,
    view,
    areaName,
    startDate,
    endDate,
    size,
  } = useAppContext();
  const [rooms, setRooms] = useState([]);
  const [selectedRoom, setSelectedRoom] = useState(null);
  const [currentPage, setCurrentPage] = useState(1);
  const [currentPageRooms, setCurrentPageRooms] = useState([]);

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
    let q = `SELECT * FROM room WHERE price <= ${roomPrice} AND area >= ${size}`;
    if (capacity !== 0) q = q + ` AND capacity = ${capacity}`;
    if (view !== "All") q = q + ` AND view = '${view}'`;
    if (hotelName !== "All")
      q =
        q +
        ` AND EXISTS (SELECT * FROM hotel WHERE hotel.hotel_id = room.hotel_id AND hotel.name = '${hotelName}')`;
    if (areaName !== "All")
      q =
        q +
        ` AND EXISTS (SELECT * FROM hotel WHERE hotel.hotel_id = room.hotel_id AND hotel.city='${city}' AND hotel.country='${country}' )`;
    if (startDate !== "" && endDate !== "")
      q =
        q +
        ` AND NOT EXISTS (
      SELECT *
      FROM reservation
      WHERE reservation.room_number = room.room_number 
      AND reservation.start_date <= '${endDate}' 
      AND reservation.end_date >= '${startDate}'
    )`;
    query(q, "/api/sql/select", setRooms);
  }, [
    roomPrice,
    capacity,
    view,
    hotelName,
    areaName,
    startDate,
    endDate,
    size,
  ]);

  useEffect(() => {
    setCurrentPage(1); // Set current page to 1 whenever rooms change
    const start = 0; // Always start from the first item
    const end = start + PAGE_SIZE;
    setCurrentPageRooms(rooms.slice(start, end));
  }, [rooms]);
  const totalPages = Math.ceil(rooms.length / PAGE_SIZE);

  return (
    <div className="rooms__pagination__wrapper">
      <div className="rooms__wrapper">
        <RoomsFilter />
        <div className="rooms__container">
          {rooms &&
            rooms.length > 0 &&
            rooms
              .slice((currentPage - 1) * PAGE_SIZE, currentPage * PAGE_SIZE)
              .map((room, index) => (
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

      <div className="pagination">
        <div className="page_number"> page: {currentPage}</div>
        <div className="pagination__button">
          <button
            onClick={() => setCurrentPage(currentPage - 1)}
            disabled={currentPage === 1}
          >
            Previous
          </button>

          <button
            onClick={() => setCurrentPage(currentPage + 1)}
            disabled={currentPage === Math.ceil(rooms.length / PAGE_SIZE)}
          >
            Next
          </button>
        </div>
      </div>
    </div>
  );
};

export default Rooms;
