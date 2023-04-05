import React, { useState } from "react";
import { useAppContext } from "../../../context/contextProvider";
import { Link } from "react-router-dom";

import {
  FormControl,
  Select,
  MenuItem,
  Radio,
  RadioGroup,
  FormControlLabel,
  Typography,
  Slider,
} from "@mui/material";

import { blue } from "@mui/material/colors";

import "./roomsFilter.css";

const RoomsFilter = () => {
  const {
    rooms,
    hotels,
    hotelName,
    setHotelName,
    setRoomPrice,
    capacity,
    setCapacity,
    view,
    setView
  } = useAppContext();
  const [price, setPrice] = useState(1500);

  const valueText = (number) => {
    return `$${number}`;
  };

  const getViews = () => {
    let views = [];
    if (rooms) {
      rooms.forEach((room) => {
        let str = room.view;
        if (!views.includes(str)) views.push(str);
      });
    }
    return views;
  };

  return (
    <div className="rooms__filter_container">
      <div className="rooms__filter-header">Filter by</div>

      <div className="hotel__dropdown-filter">
        <Typography
          className="form__label"
          id="hotel__dropdown-filter-header"
          gutterBottom
        >
          Hotel
        </Typography>
        <FormControl sx={{ marginBottom: 1, minWidth: 190 }}>
          <Select
            value={hotelName}
            inputProps={{ "aria-label": "Without label" }}
            onChange={(e) => setHotelName(e.target.value)}
          >
            <MenuItem value="All">
              <Link className="filters__link" to="/rooms">
                <em>All</em>
              </Link>
            </MenuItem>
            {hotels.map((hotel, index) => (
              <MenuItem key={index} value={hotel.name}>
                <p className="filters__hotelName">{hotel.name}</p>
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>

      <div className="view__dropdown-filter">
        <Typography
          className="form__label"
          id="view__dropdown-filter-header"
          gutterBottom
        >
          View
        </Typography>
        <FormControl sx={{ marginBottom: 1, minWidth: 190 }}>
          <Select
            value={view}
            inputProps={{ "aria-label": "Without label" }}
            onChange={(e) => {
              setView(e.target.value);
            }}
          >
            <MenuItem value="All">
              <em>All</em>
            </MenuItem>
            {getViews().map((views, index) => (
              <MenuItem key={index} value={views}>
                {views}
              </MenuItem>
            ))}
          </Select>
        </FormControl>
      </div>





      <div className="price__filter">
        <Typography className="form__label" id="price__header" gutterBottom>
          Price per night
        </Typography>
        <Typography id="price__filter-subheader" gutterBottom>
          <i>{valueText(price)}</i>
        </Typography>
        <Slider
          sx={{ color: blue[200], width: 180 }}
          className="price__filter"
          aria-label="Price"
          defaultValue={1500}
          getAriaValueText={valueText}
          valueLabelDisplay="off"
          min={40}
          max={1500}
          onChange={(e, value) => {
            setPrice(value);
            setRoomPrice(value);
          }}
        />
      </div>

      <div className="capacity__radio-filter">
        <Typography
          className="form__label"
          id="capacity__radio-filter-header"
          gutterBottom
        >
          Capacity
        </Typography>
        <FormControl className="form__control">
          <RadioGroup
            aria-labelledby="capacity__radio-filter"
            defaultValue="Any"
            name="capacity__radio-filter"
            value={capacity}
            onChange={(e) => setCapacity(e.target.value)}
          >
            <FormControlLabel
              value={0}
              control={<Radio sx={{ color: blue[200] }} />}
              label="Any capacity"
            />
            <FormControlLabel
              value={5}
              control={<Radio sx={{ color: blue[200] }} />}
              label="For 5"
            />
            <FormControlLabel
              value={4}
              control={<Radio sx={{ color: blue[200] }} />}
              label="For 4"
            />
            <FormControlLabel
              value={3}
              control={<Radio sx={{ color: blue[200] }} />}
              label="For 3"
            />

            <FormControlLabel
              value={2}
              control={<Radio sx={{ color: blue[200] }} />}
              label="For 2"
            />

            <FormControlLabel
              value={1}
              control={<Radio sx={{ color: blue[200] }} />}
              label="For 1"
            />
          </RadioGroup>
        </FormControl>
      </div>
    </div>
  );
};

export default RoomsFilter;
