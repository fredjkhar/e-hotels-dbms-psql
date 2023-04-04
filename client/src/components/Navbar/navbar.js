import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { useAppContext } from "../../context/contextProvider";
import ApartmentIcon from "@mui/icons-material/Apartment";
import { auth } from "../../firebase";

import "./navbar.css";

const Navbar = () => {
  var { chaines, setChaineName } = useAppContext();
  const [openChaines, setOpenChaines] = useState(false);
  const [currentUser, setCurrentUser] = useState(null);

  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((user) => {
      setCurrentUser(user);
    });

    return unsubscribe;
  }, []);

  return (
    <div className="navbar">
      <div className="navbar__leftSide">
        <div className="navbar__logo">
          <ApartmentIcon fontSize="inherit" color="inherit" />
        </div>
        <Link to="/" className="navbar__title">
          E-Hotel
        </Link>
      </div>
      <ul className="navbar__rightSide">
        <li>
          <Link to="/Manager" className="navbar__link">Manager</Link>
        </li>
        <li>
          <h1
            className="navbar__link"
            onClick={() => {
              setOpenChaines(!openChaines);
            }}
          >
            Chaines
          </h1>
          <ul className={`navbar__dropdown ${!openChaines && "inactive"}`}>
            {chaines.map((chaine, index) => (
              <li key={index}>
                <Link
                  className={"navbar__dropdownItem"}
                  to={`/${chaine.name}`}
                  onClick={() => {
                    setOpenChaines(false);
                    setChaineName(chaine.name);
                  }}
                >
                  {chaine.name}
                </Link>
              </li>
            ))}
          </ul>
        </li>
        <li>
          <Link to="/hotels" className="navbar__link" onClick={() => setChaineName("All")}>
            Hotels
          </Link>
        </li>
        <li>
          {currentUser ? (
            <Link className="navbar__link" onClick={() => auth.signOut()}>
              Sign Out
            </Link>
          ) : (
            <Link to="/connexion" className="navbar__link">
              Log in
            </Link>
          )}
        </li>
      </ul>
    </div>
  );
};

export default Navbar;
