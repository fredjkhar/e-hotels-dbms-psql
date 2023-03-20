import React, { useState } from "react";
import { Link } from "react-router-dom";
import { useContext } from "../../context/contextProvider";
import ApartmentIcon from "@mui/icons-material/Apartment";

import "./navbar.css";

const Navbar = () => {
  var { chaines } = useContext();
  const [openChaines, setOpenChaines] = useState(false);

  function DropdownItem(props) {
    return (
      <li>
        <Link className="navbar__dropdownItem" to={`/${props.text}`} >{props.text}</Link>
      </li>
    );
  }

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
          <Link to="/" className="navbar__link `{}`" onClick={() => {setOpenChaines(!openChaines)}}>Chaines</Link>
          <ul className={`navbar__dropdown ${!openChaines && "inactive"}`}>
            {chaines.map((chaines, index) => (
              <DropdownItem key={index} text={chaines.name} />
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