import React from "react";
import Stars from "../Stars/stars";
import Rating from "../Rating/rating";

import "./hotel.css";

const Hotel = (props) => {
  const hotel = props.hotel;
  return (
    <div className="hotel__container">
      <img
        className="hotel__img"
        src={require(`../../../assets/images/hotel-${hotel.hotel_id}-min.jpg`)}
        alt="hotel"
      />
      <div className="hotel__info">
        <div className="hotel__name">{hotel.name}</div>
        <Stars number={hotel.stars_nbr} />
        <div className="hotel__location">
          <img
            className="hotel__location-icon"
            src={require("../../../assets/icons/location-50.png")}
            alt="location icon"
          />
          {hotel.city}, {hotel.country}
        </div>
        <Rating number={hotel.rating} />
      </div>
      <div className="hotel__price">
        <div className="hotel__price-tag"><p>Starting from</p> ${hotel.min_price}</div>
        <div className="view-deals__btn">
          <span>View deals</span>
          <img
            className="hotel__more-than"
            src={require("../../../assets/icons/more-than-24.png")}
            alt="more than icon"
          />
        </div>
      </div>
    </div>
  );
};

export default Hotel;
