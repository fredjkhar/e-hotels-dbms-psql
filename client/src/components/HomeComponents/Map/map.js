import React from "react";
import { Link } from "react-router-dom";

import "./map.css";
import { useAppContext } from "../../../context/contextProvider";

const Map = () => {
  const { setAreaName, areaName } = useAppContext();

  return (
    <div className="map__container">
      <img
        className="left__panel-map"
        alt="map"
        src={require("../../../assets/images/map.png")}
      />
      <Link to="/hotels" onClick={() => setAreaName("New York, USA")}>
        <div className="map__circle circle-0" />
        <div className="map__circle-wave circle-0" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Toronto, Canada")}>
        <div className="map__circle circle-1" />
        <div className="map__circle-wave circle-1" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Vancouver, Canada")}>
        <div className="map__circle circle-2" />
        <div className="map__circle-wave circle-2" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("San Francisco, USA")}>
        <div className="map__circle circle-3" />
        <div className="map__circle-wave circle-3" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Miami, USA")}>
        <div className="map__circle circle-4" />
        <div className="map__circle-wave circle-4" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Houston, USA")}>
        <div className="map__circle circle-5" />
        <div className="map__circle-wave circle-5" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Montreal, Canada")}>
        <div className="map__circle circle-6" />
        <div className="map__circle-wave circle-6" />
      </Link>
    </div>
  );
};

export default Map;
