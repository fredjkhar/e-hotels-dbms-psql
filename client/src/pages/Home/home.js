import React, { useEffect } from "react";
import "./home.css";
import Cards from "../../components/HomeComponents/Cards/cards";
import Map from "../../components/HomeComponents/Map/map";
import { useAppContext } from "../../context/contextProvider";

const Home = () => {
  const { setGroupName, setAreaName } = useAppContext();
  useEffect(() => {
    setGroupName("All");
    setAreaName("All");
  }, []);

  return (
    <div className="home__container">
      <div className="left__panel">
        <Map />
      </div>
      <div className="right__panel">
        <Cards />
      </div>
    </div>
  );
};

export default Home;
