import React, { useState, useEffect } from "react";
import { useAppContext } from "../../../context/contextProvider";
import { Link } from "react-router-dom";
import { query } from "../../../helpers/_fetchers";

import {
  FormControl,
  Select,
  MenuItem,
  Typography,
  Slider,
  ToggleButton,
  ToggleButtonGroup,
} from "@mui/material";

import { blue } from "@mui/material/colors";

import "./roomsFilter.css";

const RoomsFilter = () => {
  const {
    hotelName,
    setHotelName,
    setRoomPrice,
    capacity,
    setCapacity,
    view,
    setView,
    areaName,
    setAreaName,
    startDate,
    setStartDate,
    endDate,
    setEndDate,
  } = useAppContext();
  const [chaines, setChaines] = useState();
  const [hotels, setHotels] = useState();
  const [rooms, setRooms] = useState();
  const [price, setPrice] = useState(1500);
  const [errorMessage, setErrorMessage] = useState("");

  const valueText = (number) => {
    return `$${number}`;
  };

  useEffect(() => {
    query("SELECT * FROM hotel_group", "/api/sql", setChaines);
    query("SELECT * FROM hotel", "/api/sql", setHotels);
    query("SELECT * FROM room", "/api/sql", setRooms);
  }, []);

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

  const getAreas = () => {
    let areas = [];
    hotels.forEach((hotel) => {
      let str = hotel.city + ", " + hotel.country;
      if (!areas.includes(str)) areas.push(str);
    });
    return areas;
  };

  const handleEndDateChange = (e) => {
    if (startDate === "") {
      setErrorMessage("Please select a start date first");
    }
    else if (startDate && e.target.value < startDate) {
      setErrorMessage("End date should be after start date");
    } else {
      setErrorMessage("");
      setEndDate(e.target.value);
    }
  };

  return (
    <div className="rooms__filter__container">
      <div className="rooms__filter-header">Filter by</div>
      <div className="rooms__date__filter">
        <label htmlFor="start_date">Check in</label>
        <input
          type="date"
          id="start_date"
          name="start_date"
          onChange={(e) => setStartDate(e.target.value)}
          onReset={() => setStartDate("")}
        />

        <label htmlFor="end_date">Check out</label>
        <input
          type="date"
          id="end_date"
          name="end_date"
          onChange={handleEndDateChange}
          disabled={!startDate}
          onReset={() => setEndDate("")}
        />
        <br />
        {errorMessage && <div className="rooms__filter__error">{errorMessage}</div>}
      </div>

      <div className="hotel__dropdown-filter">
        <Typography
          className="form__label"
          id="hotel__dropdown-filter-header"
          gutterBottom
        >
          Hotel
        </Typography>
        <FormControl sx={{ marginBottom: 1, minWidth: 190, maxWidth: 190 }}>
          <Select
            value={hotelName}
            inputProps={{ "aria-label": "Without label" }}
            onChange={(e) => setHotelName(e.target.value)}
            MenuProps={{
              PaperProps: {
                style: {
                  maxWidth: 190,
                  overflowX: "auto",
                  wordWrap: "break-word",
                },
              },
            }}
          >
            <MenuItem value="All">
              <Link className="filters__link" to="/rooms">
                <em>All</em>
              </Link>
            </MenuItem>
            {hotels &&
              hotels.map((hotel, index) => (
                <MenuItem key={index} value={hotel.name}>
                  <Link className="filters__link">{hotel.name}</Link>
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
            {hotels &&
              getAreas().map((area, index) => (
                <MenuItem key={index} value={area}>
                  {area}
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
                <Link className="filters__link">{views}</Link>
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
          onChange={(e, newValue) =>
            setCapacity(newValue === null ? 0 : newValue)
          }
          exclusive
        >
          <ToggleButton value={1}>1</ToggleButton>
          <ToggleButton value={2}>2</ToggleButton>
          <ToggleButton value={3}>3</ToggleButton>
          <ToggleButton value={4}>4</ToggleButton>
          <ToggleButton value={5}>5</ToggleButton>
        </ToggleButtonGroup>
      </div>
    </div>
  );
};

export default RoomsFilter;
