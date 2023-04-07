import React, { useEffect, useState } from "react";
import { useAppContext } from "../../../context/contextProvider";
import { Link } from "react-router-dom";
import { query } from "../../../helpers/_fetchers";

import {
  FormControlLabel,
  Slider,
  Radio,
  RadioGroup,
  FormControl,
  Typography,
  MenuItem,
  Select,
} from "@mui/material";
import { blue } from "@mui/material/colors";

import "./filters.css";

const Filters = () => {
  const {
    setPriceRange,
    minRating,
    setMinRating,
    groupName,
    setGroupName,
    areaName,
    setAreaName,
    star,
    setStar,
  } = useAppContext();
  const [chaines, setChaines] = useState();
  const [hotels, setHotels] = useState();
  const [price, setPrice] = useState(400);

  const valueText = (number) => {
    return `$${number}`;
  };

  useEffect(() => {
    query(
      "SELECT * FROM hotel_group",
      "/api/sql",
      setChaines
    );
    query(
      "SELECT * FROM hotel",
      "/api/sql",
      setHotels
    );
  }, [])

  const createStars = () => {
    const stars = [];
    for (let i = 1; i < 6; i++) {
      stars.push(
        <div
          onClick={() => (star === i ? setStar(0) : setStar(i))}
          key={i}
          className={"filter__star " + (star === i && "filter__star-clicked")}
        >
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

  const getAreas = () => {
    let areas = [];
    hotels.forEach((hotel) => {
      let str = hotel.city + ", " + hotel.country;
      if (!areas.includes(str)) areas.push(str);
    });
    return areas;
  };

  return (
    <div className="filters__container">
      <div className="filter-header">Filter by</div>
      <div className="hotelGroup__dropdown-filter">
        <Typography
          className="form__label"
          id="hotelGroup__dropdown-filter-header"
          gutterBottom
        >
          Hotel chain
        </Typography>
        <FormControl sx={{ marginBottom: 1, minWidth: 190 }}>
          <Select
            value={groupName}
            inputProps={{ "aria-label": "Without label" }}
            onChange={(e) => setGroupName(e.target.value)}
          >
            <MenuItem value="All">
              <Link className="filters__link" to="/hotels">
                <em>All</em>
              </Link>
            </MenuItem>
            {chaines && chaines.map((chaine, index) => (
              <MenuItem key={index} value={chaine.name}>
                <Link className="filters__link" to={`/${chaine.name}`}>
                  {chaine.name}
                </Link>
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>
      <div className="location__radio-filter">
        <Typography
          className="form__label"
          id="location__radio-filter-header"
          gutterBottom
        >
          Area
        </Typography>
        <FormControl sx={{ marginBottom: 1, minWidth: 190 }}>
          <Select
            value={areaName}
            inputProps={{ "aria-label": "Without label" }}
            onChange={(e) => {
              setAreaName(e.target.value);
            }}
          >
            <MenuItem value="All">
              <em>All</em>
            </MenuItem>
            {hotels && getAreas().map((area, index) => (
              <MenuItem key={index} value={area}>
                {area}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>
      <div className="price__range-filter">
        <Typography
          className="form__label"
          id="price__range-filter-header"
          gutterBottom
        >
          Price per night
        </Typography>
        <Typography id="price__range-filter-subheader" gutterBottom>
          <i>{valueText(price)}</i>
        </Typography>
        <Slider
          sx={{ color: blue[200], width: 180 }}
          className="price__range-filter"
          aria-label="Price"
          defaultValue={400}
          getAriaValueText={valueText}
          valueLabelDisplay="off"
          min={40}
          max={400}
          onChange={(e, value) => {
            setPrice(value);
            setPriceRange(value);
          }}
        />
      </div>
      <div className="guest__radio-filter">
        <Typography
          className="form__label"
          id="guest__radio-filter-header"
          gutterBottom
        >
          Guest rating
        </Typography>
        <FormControl className="form__control">
          <RadioGroup
            aria-labelledby="guest__radio-filter"
            defaultValue="Any"
            name="guest__radio-filter"
            value={minRating}
            onChange={(e) => setMinRating(e.target.value)}
          >
            <FormControlLabel
              value={0}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Any"
            />
            <FormControlLabel
              value={4.5}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Wonderful 4.5+"
            />
            <FormControlLabel
              value={4.0}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Very good 4.0+"
            />
            <FormControlLabel
              value={3.5}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Good 3.5+"
            />
          </RadioGroup>
        </FormControl>
      </div>
      <div className="star__radio-filter">
        <Typography
          className="form__label"
          id="star__radio-filter-header"
          gutterBottom
        >
          Star ratings
        </Typography>
        <div className="stars__radio">{createStars()}</div>
      </div>
    </div>
  );
};

export default Filters;
