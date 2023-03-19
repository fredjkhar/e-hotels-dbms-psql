import React, { useState } from "react";
import "./navbar.css";
import ApartmentIcon from "@mui/icons-material/Apartment";
import { Link } from "react-router-dom";
import Button from '@mui/material/Button';

export default function Navbar(props) {
  const [openHotels, setOpenHotels] = useState(false);

  return (
    <div className="navbar">
      <div className="leftSide">
        <div className="logo">
          <ApartmentIcon fontSize="inherit" color="inherit" />
        </div>
        <Link to="/" className="logoTitle">   E-Hotel </Link>
    
      </div>

      <div className="rightSide">
        <div className="dropDownHotel">
          <div
            className="dropDownTrigger" onClick={() => { setOpenHotels(!openHotels); }}  >
            <p> Nos Hotels </p>
          </div>
          <div
            className={`dropDownHotelList ${  openHotels ? "active" : "inactive" }`} >
            <ul>
              {props.items.map((item, index) => ( <DropdownItem key={index} text={item.text} /> ))}
            </ul>
          </div>
        </div>
        <Link to="/" className="linkChaines"> Nos Chaines </Link>
      
      </div>
    </div>
  );
}

function DropdownItem(props) {
  return (
    <li className="dropdownItem">
      <Link to={`/${props.text}`} className="dropdownLink">{props.text}</Link>
    </li>
  );
}
