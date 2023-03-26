import React, { useState } from "react";
import { Link } from "react-router-dom";
import { useAppContext } from "../../context/contextProvider";
import ApartmentIcon from "@mui/icons-material/Apartment";

import "./navbar.css";

const Navbar = () => {
  var { chaines } = useAppContext();
  const [openChaines, setOpenChaines] = useState(false);

  return (
    <div className="navbar">
      <div className="navbar__leftSide">
        <div className="navbar__logo">
          <ApartmentIcon fontSize="inherit" color="inherit" />
        </div>
        <Link to="/" className="navbar__title">E-Hotel</Link>
      </div>
      <ul className="navbar__rightSide">
        <li>
          <Link to="/" className="navbar__link" onClick={() => {setOpenChaines(!openChaines)}}>Chaines</Link>
          <ul className={`navbar__dropdown ${!openChaines && "inactive"}`}>
            {chaines.map((chaines, index) => (
              <li key={index}>
                <Link className={"navbar__dropdownItem"} to={`/${chaines.name}`} >{chaines.name}</Link>
              </li>
            ))}
          </ul>
        </li>
        <li><Link to="/" className="navbar__link">Hotels</Link></li>
        <li><Link to="/" className="navbar__link">Connexion</Link></li>
      </ul>
    </div>
  );
}

export default Navbar;