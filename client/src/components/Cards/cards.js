import React from "react";
import "./cards.css";
import CardItem from "../CardItem/cardItem";
import hotel1 from "../../assets/images/hotel1.jpg";

function Cards() {
  return (
    <div className="cards">
      <h1>Nos meilleures chaines</h1>
      <div className="cards__container">
        <div className="cards__wrapper">
          <ul className="cards__items">
          <CardItem
              src={hotel1}
              text="visit this nice hotel"
              label="hotel"
              path="/hotel1"
            />
            <CardItem
              src={hotel1}
              text="visit this nice hotel"
              label="hotel"
              path="/hotel1"
            />
          </ul>
          <ul className="cards__items">
          <CardItem
              src={hotel1}
              text="visit this nice hotel"
              label="hotel"
              path="/hotel1"
            />
            <CardItem
              src={hotel1}
              text="visit this nice hotel"
              label="hotel"
              path="/hotel1"
            />
            <CardItem
              src={hotel1}
              text="visit this nice hotel"
              label="hotel"
              path="/hotel1"
            />
          </ul>
        </div>
      </div>
    </div>
  );
}

export default Cards;
