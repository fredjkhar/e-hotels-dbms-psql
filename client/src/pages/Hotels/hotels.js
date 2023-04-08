import React, { useEffect, useState } from "react";
import { useAppContext } from "../../context/contextProvider";

import Hotel from "../../components/HotelComponents/Hotel/hotel";
import Filters from "../../components/HotelComponents/Filters/filters";
import { query } from "../../helpers/_fetchers";

import "./hotels.css";

const Hotels = () => {
  const { minPrice, minRating, groupName, areaName, star } = useAppContext();
  const [hotels, setHotels] = useState([]);

  //AreaName is of the following form: "Vancouver, Canada", "San Francisco, USA",... or "All"
  const city =
    areaName !== "All" ? areaName.substring(0, areaName.indexOf(", ")) : "";
  const country =
    areaName !== "All"
      ? areaName.substring(areaName.indexOf(", ") + 2, areaName.length)
      : "";

  //Each time one of filter variables in the array below is modified, useEffect invokes
  //the wrapped function to execute the query and save its result in the 'hotels' variable.
  //Since 'hotels' is a state variable, the hotels page is refreshed/updated 
  //whenever the state variable is updated.
  useEffect(() => {
    let q = `SELECT * FROM hotel WHERE min_price <= ${minPrice} AND rating >= ${minRating}`;
    if (star !== 0) q = q + ` AND stars_nbr = ${star}`;
    if (areaName !== "All") q = q +  ` AND city='${city}' AND country='${country}'`;
    if (groupName !== "All") q = q + ` AND EXISTS (SELECT * FROM hotel_group WHERE hotel.hotel_group_id = hotel_group.id AND hotel_group.name = '${groupName}')`;
    
    query(q, "/api/sql/select", setHotels);
  }, [minPrice, minRating, groupName, areaName, star]);

  return (
    <div className="hotels__wrapper">
      <Filters />
      <div className="hotels__container">
        {hotels &&
          hotels.map((hotel, index) => <Hotel key={index} hotel={hotel} />)}
      </div>
    </div>
  );
};

export default Hotels;
