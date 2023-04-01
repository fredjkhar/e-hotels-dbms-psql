import React from "react";

import "./stars.css";

const Stars = (props) => {
  var width;
  const stars = [];

  if (props.number) {
    width = 16 * props.number;
  }

  for (let i = 0; i < 5; i++) {
    stars.push(
      <img
        key={i}
        style={{ width: "16px" }}
        src={require("../../../assets/icons/star-48.png")}
        alt="star"
      />
    );
  }

  return (
    <div className="stars__container">
      <div style={{ width: width, overflow: "hidden"}}>
        <div style={{ width: "calc(16px * 5)" }}>
          {stars.map((star) => star)}
        </div>
      </div>
      <div style={{marginLeft: "10px"}}>Hotel</div>
    </div>
  );
};

export default Stars;
