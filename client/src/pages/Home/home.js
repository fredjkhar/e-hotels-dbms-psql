import React, { useEffect } from "react";
import "./home.css";
import Cards from "../../components/HomeComponents/Cards/cards";
import { useAppContext } from "../../context/contextProvider";
import Map from "../../components/HomeComponents/Map/map";

const Home = () => {
  const { setAreaName, setChaineName } = useAppContext();
  useEffect(() => {
    setAreaName("All");
    setChaineName("All");
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
