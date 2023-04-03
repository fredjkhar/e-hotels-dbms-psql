import React from "react";

import { green } from "@mui/material/colors";
import Box from "@mui/material/Box";

import "./rating.css";

const Rating = (props) => {
  const rating = props.number;
  let color = "";
  let comment = "";

  if (typeof rating === "number") {
    if (rating >= 4.5) {
      color = green[900];
      comment = "Wonderful";
    } else if (rating >= 4) {
      color = green[700];
      comment = "Very good";
    } else if (rating >= 3.5) {
      color = green[500];
      comment = "Good";
    } else {
      color = green[300];
      comment = "Average";
    }
  }

  return (
    <div className="rating__container">
      <Box className="rating__box" sx={{ backgroundColor: `${color}` }}>
        {rating}
      </Box>
      {comment}
    </div>
  );
};

export default Rating;
