import React, { useState, useEffect } from "react";
import { Link } from "react-router-dom";
import { useAppContext } from "../../context/contextProvider";
import ApartmentIcon from "@mui/icons-material/Apartment";
import { auth } from "../../helpers/firebase";
import { query } from "../../helpers/_fetchers";

import "./navbar.css";

const Navbar = () => {
  const { setGroupName, cookies, removeCookie } = useAppContext();
  const [openChaines, setOpenChaines] = useState(false);
  const [currentUser, setCurrentUser] = useState(null);
  const [chaines, setChaines] = useState([]);

  const role = cookies.credentials ? cookies.credentials.role : "";

  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((user) => {
      setCurrentUser(user);
    });
    query("SELECT * FROM hotel_group", "/api/sql/select", setChaines);
    return unsubscribe;
  }, []);

  return (
    <div className="navbar">
      <div className="navbar__leftSide">
        <div className="navbar__logo">
          <ApartmentIcon fontSize="inherit" color="inherit" />
        </div>
        <Link
          to="/"
          className="navbar__title"
          onClick={() => setOpenChaines(false)}
        >
          E-Hotel
        </Link>
      </div>
      <ul className="navbar__rightSide">
        <li>
          {role === "manager" ? (
            <>
              <Link
                to="/manager"
                className="navbar__link"
                onClick={() => setOpenChaines(false)}
              >
                Console
              </Link>
              <Link
                to="/reservations"
                className="navbar__link"
                onClick={() => setOpenChaines(false)}
              >
                Reservations
              </Link>
              <Link
                to="/locations"
                className="navbar__link"
                onClick={() => setOpenChaines(false)}
              >
                Locations
              </Link>
            </>
          ) : role === "employee" ? (
            <>
              <Link
                to="/reservations"
                className="navbar__link"
                onClick={() => setOpenChaines(false)}
              >
                Reservations
              </Link>
              <Link
                to="/locations"
                className="navbar__link"
                onClick={() => setOpenChaines(false)}
              >
                Locations
              </Link>
            </>
          ) : null}
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
            {chaines &&
              chaines.map((group, index) => (
                <li key={index}>
                  <Link
                    className={"navbar__dropdownItem"}
                    to={`/${group.name}`}
                    onClick={() => {
                      setOpenChaines(false);
                      setGroupName(group.name);
                    }}
                  >
                    {group.name}
                  </Link>
                </li>
              ))}
          </ul>
        </li>
        <li>
          <Link
            to="/hotels"
            className="navbar__link"
            onClick={() => {
              setOpenChaines(false);
            }}
          >
            Hotels
          </Link>
        </li>
        <li>
          {currentUser ? (
            <Link
              to="/"
              className="navbar__link"
              onClick={() => {
                auth.signOut();
                removeCookie("credentials");
                setOpenChaines(false);
              }}
            >
              Sign Out
            </Link>
          ) : (
            <Link
              to="/login"
              className="navbar__link"
              onClick={() => setOpenChaines(false)}
            >
              Log in
            </Link>
          )}
        </li>
        <li>
          {currentUser ? null : (
            <Link
              to="/signup"
              className="navbar__link"
              onClick={() => setOpenChaines(false)}
            >
              Sign up
            </Link>
          )}
        </li>
      </ul>
    </div>
  );
};

export default Navbar;
