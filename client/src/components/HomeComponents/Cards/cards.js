import React, { useState, useEffect } from "react";
import "./cards.css";
import CardItem from "../CardItem/cardItem";
import { query } from "../../../helpers/_fetchers";

function Cards() {
  const [chaines, setChaines] = useState([]);

  useEffect(() => {
    query(
      "SELECT * FROM hotel_group",
      "/api/sql/select",
      setChaines
    );
  }, []);

  return (
    <div className="cards">
      <h1 className="cards__header-1">
        Get the best deal for your best vacation with our partners
      </h1>
      <div className="cards__container">
        {chaines.map((chaine, index) => (
          <CardItem
            key={index}
            src={require(`../../../assets/icons/chaine-${chaine.id}.png`)}
            path={`/${chaine.name}`}
            id={chaine.id}
            name={chaine.name}
          />
        ))}
      </div>
    </div>
  );
}

export default Cards;
