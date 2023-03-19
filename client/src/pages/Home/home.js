import React from "react";
import "./home.css";
import Cards from '../../components/Cards/cards'

export default function Home(props) {


    const { items } = props;
    const gridItems = [];
  
    for (let i = 0; i < items.length; i++) {
      gridItems.push(<div className="grid-item" key={i}>{items[i].text}</div>);
    }
  
    return (
      <div className="home-container">
        <div className="left-panel"></div>
        <div className="right-panel">
          <Cards/>  
   
        </div>
      </div>
    );
}
