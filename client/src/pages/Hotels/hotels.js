import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import Hotel from "../../components/HotelComponents/Hotel/hotel";
import Filters from "../../components/HotelComponents/Filters/filters";

import "./hotels.css";

const Hotels = () => {
  const { hotels, chaines, priceRange, minRating, chaineName, areaName, star } =
    useAppContext();
  const [displayedHotels, setDisplayedHotels] = useState(hotels);

  const filterByAreaName = (area, city, country) => {
    let commaIndex = area.indexOf(", ");
    let _city = area.substring(0, commaIndex);
    let _country = area.substring(commaIndex + 2, area.length);
    return city === _city && country === _country;
  };

  useEffect(() => {
    if (chaineName !== "All") {
      let _chaines = chaines.filter((chaine) => chaine.name === chaineName);
      setDisplayedHotels(
        hotels.filter(
          (hotel) =>
            hotel.hotel_group_id === _chaines[0].id &&
            hotel.min_price <= priceRange &&
            hotel.rating >= minRating &&
            (star === 0 ? true : hotel.stars_nbr === star) &&
            (areaName === "All"
              ? true
              : filterByAreaName(areaName, hotel.city, hotel.country))
        )
      );
    } else {
      setDisplayedHotels(
        hotels.filter(
          (hotel) =>
            hotel.min_price <= priceRange &&
            hotel.rating >= minRating &&
            (star === 0 ? true : hotel.stars_nbr === star) &&
            (areaName === "All"
              ? true
              : filterByAreaName(areaName, hotel.city, hotel.country))
        )
      );
    }
  }, [priceRange, minRating, chaineName, chaines, hotels, star, areaName]);

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
