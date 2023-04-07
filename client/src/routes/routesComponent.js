import React, { useEffect, useState } from "react";
import { Routes, Route } from "react-router-dom";
import { query } from "../helpers/_fetchers";

import Home from "../pages/Home/home";
import Hotels from "../pages/Hotels/hotels";
import Connection from "../pages/Connection/connection";
import Manager from "../pages/Manager/manager";
import Employee from "../pages/Employee/employee";
import User from "../pages/User/user";
import Room from "../pages/Rooms/rooms";

const RoutesComponent = () => {
  const [chaines, setChaines] = useState();

  useEffect(() => {
    query(
      "SELECT * FROM hotel_group",
      "/api/sql",
      setChaines
    );
  }, []);

  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/hotels" element={<Hotels />} />
      <Route path="/manager" element={<Manager />} />
      <Route path="/employee" element={<Employee />} />
      <Route path="/user" element={<User />} />

      {chaines && chaines.map((chain, index) => (
        <Route key={index} path={`/${chain.name}`} element={<Hotels />} />
      ))}
      <Route path="/rooms" element={<Room />} />
      <Route path="/login" element={<Connection status="login" />} />
      <Route path="/signup" element={<Connection status="signup" />} />
    </Routes>
  );
};

export default RoutesComponent;
