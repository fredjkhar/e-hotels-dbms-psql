import React from "react";
import "./home.css";
import Cards from "../../components/Cards/cards";

const Home = () => {
  return (
    <div className="home__container">
      <div className="left__panel">
        <img
          className="left__panel-map"
          alt="map"
          src={require("../../assets/images/map.png")}
        />
      </div>
      <div className="right__panel">
        <Cards />
      </div>
    </div>
  );
}

export default Home;
