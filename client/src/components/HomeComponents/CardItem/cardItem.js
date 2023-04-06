import React from "react";
import { Link } from "react-router-dom";
import { useAppContext } from "../../../context/contextProvider";

import "./cardItem.css";

const CardItem = (props) => {
  const { setGroupName } = useAppContext();

  return (
    <div className="card__item">
      <Link className="card__item__link" to={props.path}>
        <img
          className="card__item__img"
          alt={`chaine-${props.id} logo`}
          src={props.src}
          onClick={() => setGroupName(props.name)}
        />
      </Link>
    </div>
  );
};

export default CardItem;
