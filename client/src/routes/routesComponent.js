import React from "react";
import { Routes, Route } from "react-router-dom";
import { useAppContext } from "../context/contextProvider"

import Home from "../pages/Home/home";
import Hotels from "../pages/Hotels/hotels";
import Connection from "../pages/Connection/connection";
import Manager from "../pages/Manager/manager";

const RoutesComponent = () => {
  const { chaines } = useAppContext();

  return (
    <Routes>
      <Route path="/" element={<Home />} />
      <Route path="/hotels" element={<Hotels />} />
      <Route path="/manager" element={<Manager />} />

      {chaines.map((chain, index) => (
        <Route key={index} path={`/${chain.name}`} element={<Hotels />} />
      ))}
      
      <Route path="/connection" element={<Connection />} />
    </Routes>
  );
};

export default RoutesComponent;