import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { query } from "../../../helpers/_fetchers";

import "./map.css";
import { useAppContext } from "../../../context/contextProvider";

const Map = () => {
  const { setAreaName } = useAppContext();
  const [capacity, setCapacity] = useState();

  useEffect(() => {
    const q = `SELECT * FROM available_rooms_by_zone`;
    query(q, "/api/sql/select", setCapacity);
  }, [])

  return (
    <div className="map__container">
      <img
        className="left__panel-map"
        alt="map"
        src={require("../../../assets/images/map.png")}
      />
      <Link style={{color: "black"}} to="/hotels" onClick={() => setAreaName("New York, USA")}>
        <div className="map__circle circle-0">{capacity && capacity[5].count}</div>
        <div className="map__circle-wave circle-0" />
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Toronto, Canada")}>
        <div className="map__circle circle-1" >{capacity && capacity[8].count}</div>
        <div className="map__circle-wave circle-1" />
        
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Vancouver, Canada")}>
        <div className="map__circle circle-2" >{capacity && capacity[7].count}</div>
        <div className="map__circle-wave circle-2" />
        
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("San Francisco, USA")}>
        <div className="map__circle circle-3" >{capacity && capacity[9].count}</div>
        <div className="map__circle-wave circle-3" />
        
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Miami, USA")}>
        <div className="map__circle circle-4" > {capacity && capacity[14].count}</div>
        <div className="map__circle-wave circle-4" />
       
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Houston, USA")}>
        <div className="map__circle circle-5" >{capacity && capacity[13].count}</div>
        <div className="map__circle-wave circle-5" />
        
      </Link>
      <Link to="/hotels" onClick={() => setAreaName("Montreal, Canada")}>
        <div className="map__circle circle-6" >{capacity && capacity[6].count}</div>
        <div className="map__circle-wave circle-6" />
        
      </Link>
    </div>
  );
};

export default Map;
