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
  Checkbox,
  ToggleButton,
  ToggleButtonGroup
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
    setView,
    problems,
    setProblems,
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

  const handleCheckboxChange = (event) => {
    setProblems(event.target.checked ? "All" : "Null");
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

      <div className="problem_checkbox">
        <Checkbox
          checked={problems === "All"}
          onChange={handleCheckboxChange}
          inputProps={{ "aria-label": "Filter rooms" }}
        />
        show rooms with problems
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

      <div className="capacity__toggle-group">
  <Typography
    className="form__label"
    id="capacity__toggle-group-header"
    gutterBottom
  >
    Capacity
  </Typography>
  <ToggleButtonGroup
    aria-label="capacity-toggle-group"
    value={capacity}
    onChange={(e, newValue) => setCapacity(newValue)}
    exclusive
  >
    <ToggleButton value={0}>
      Any
    </ToggleButton>
    <ToggleButton value={5}>
      5
    </ToggleButton>
    <ToggleButton value={4}>
      4
    </ToggleButton>
    <ToggleButton value={3}>
      3
    </ToggleButton>
    <ToggleButton value={2}>
      2
    </ToggleButton>
    <ToggleButton value={1}>
      1
    </ToggleButton>
  </ToggleButtonGroup>
</div>

    </div>
  );
};

export default RoomsFilter;
