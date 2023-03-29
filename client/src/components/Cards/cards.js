import React from "react";
import "./cards.css";
import CardItem from "../CardItem/cardItem";
import { useAppContext } from "../../context/contextProvider";

function Cards() {
  const { chaines } = useAppContext();

  return (
    <div className="cards">
      <h1 className="cards__header-1">Nos meilleures chaines</h1>
      <div className="cards__container">
        {chaines.map((chaine, index) => (
          <CardItem
            key={index}
            src={require(`../../assets/icons/chaine-${chaine.id}.png`)}
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
