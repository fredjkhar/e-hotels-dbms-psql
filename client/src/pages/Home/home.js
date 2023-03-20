import React from "react";
import "./home.css";
import Cards from "../../components/Cards/cards";

import { useContext } from "../../context/contextProvider";

export default function Home() {
  const { chaines } = useContext();
  let gridItems = [];

  //Not sure what this is for, but I updated it to pull hotelGroup names from the context (Fredj)
  //Also wrapped it in a function
  function pushGridItems(gridItems) {
    if (chaines) {
      for (let i = 0; i < chaines.length; i++) {
        gridItems.push(
          <div className="grid-item" key={i}>
            {chaines[i].name}
          </div>
        );
      }
    }
  }

  return (
    <div className="home-container">
      <div className="left-panel">
        <div>
          <img
            className="left-panel__map"
            alt="map"
            src={require("../../assets/images/map.png")}
          />
        </div>
      </div>
      <div className="right-panel">
        <Cards />
      </div>
    </div>
  );
}
