import React, { useState } from "react";
import { useAppContext } from "../../../context/contextProvider";

import {
  FormControlLabel,
  Slider,
  Radio,
  RadioGroup,
  FormControl,
  Typography,
} from "@mui/material";
import { blue } from "@mui/material/colors";

import "./filters.css";

const Filters = () => {
  const { setPriceRange, minRating, setMinRating } = useAppContext();
  const [price, setPrice] = useState(200);

  const valueText = (number) => {
    return `$${number}`;
  };

  const createStars = () => {
    const stars = [];
    for (let i = 0; i < 5; i++) {
      stars.push(
        <div className="filter__star">
          <span>{i}</span>
          <img
            src={require("../../../assets/icons/star-24.png")}
            style={{ width: "16px" }}
            alt="class star"
          />
        </div>
      );
    }
    return stars;
  };

  return (
    <div className="filters__container">
      <div className="filter-header">Filter by</div>
      <div className="location__range-filter">
        <Typography
          className="form__label"
          id="track-false-slider"
          gutterBottom
        >
          Price per night
        </Typography>
        <Typography id="track-false-slider" gutterBottom>
          {valueText(price)}
        </Typography>
        <Slider
          sx={{ color: blue[200] }}
          className="filters__slider"
          aria-label="Price"
          defaultValue={200}
          getAriaValueText={valueText}
          valueLabelDisplay="off"
          min={40}
          max={800}
          onChange={(e, value) => {
            setPrice(value);
            setPriceRange(value);
          }}
        />
      </div>
      <div className="guest__radio-filter">
        <Typography
          className="form__label"
          id="radio-buttons-ratings-group"
          gutterBottom
        >
          Guest rating
        </Typography>
        <FormControl className="form__control">
          <RadioGroup
            aria-labelledby="radio-buttons-ratings-group"
            defaultValue="Any"
            name="radio-buttons-ratings-group"
            value={minRating}
            onChange={(e, value) => {
              setMinRating(value);
            }}
          >
            <FormControlLabel
              value={0}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Any"
            />
            <FormControlLabel
              value={9}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Wonderful 9+"
            />
            <FormControlLabel
              value={8}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Very good 8+"
            />
            <FormControlLabel
              value={7}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Good 7+"
            />
          </RadioGroup>
        </FormControl>
      </div>
      <div className="star__radio-filter">
        <Typography
          className="form__label"
          id="radio-buttons-ratings-group"
          gutterBottom
        >
          Star rating
        </Typography>
        <div style={{display: "inline"}}>{createStars()}</div>
      </div>
      <div className="location__radio-filter">
        <Typography
          className="form__label"
          id="radio-buttons-ratings-group"
          gutterBottom
        >
          Area
        </Typography>
      </div>
      <div className="amenities__radio-filter">
        <Typography
          className="form__label"
          id="radio-buttons-ratings-group"
          gutterBottom
        >
          Amenities
        </Typography>
      </div>
    </div>
  );
};

export default Filters;
