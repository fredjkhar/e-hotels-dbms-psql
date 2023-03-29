import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import Hotel from "../../components/HotelComponents/Hotel/hotel";
import Filters from "../../components/HotelComponents/Filters/filters";

import "./hotels.css";

const Hotels = () => {
  const { hotels, priceRange, minRating, groupName } = useAppContext();
  const [displayedHotels, setDisplayedHotels] = useState(hotels);

  useEffect(() => {
    if (groupName) {
      setDisplayedHotels(
        hotels.filter((hotel) => {
          return (
            hotel.hotel_group_id === groupName &&
            hotel.min_price <= priceRange &&
            hotel.rating >= minRating
          );
        })
      );
    } else {
      setDisplayedHotels(
        hotels.filter((hotel) => {
          return hotel.min_price <= priceRange && hotel.rating >= minRating;
        })
      );
    }
  }, [priceRange, minRating, groupName]);

  return (
    <div className="hotels__wrapper">
      <Filters />
      <div className="hotels__container">
        {displayedHotels &&
          displayedHotels.map((hotel, index) => (
            <Hotel key={index} hotel={hotel} />
          ))}
      </div>
    </div>
  );
};

export default Hotels;
