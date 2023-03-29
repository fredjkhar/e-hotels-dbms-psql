import React from "react";
import { Routes, Route } from "react-router-dom";
import { useAppContext } from "../context/contextProvider"

import Home from "../pages/Home/home";
import Hotels from "../pages/Hotels/hotels";
import Connexion from "../pages/Connexion/connexion";

const RoutesComponent = () => {
  const { chaines } = useAppContext();

  return (
    <Routes>
      <Route path="/" element={<Home />} />

      {chaines.map((chaine, index) => (
        <Route key={index} path={`/${chaine.name}`} element={<Hotels key={chaine.name} />} />
      ))}
      
      <Route path="/connexion" element={<Connexion />} />
    </Routes>
  );
};

export default RoutesComponent;
