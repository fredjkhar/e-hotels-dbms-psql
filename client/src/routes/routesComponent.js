import React from "react";
import { Routes, Route } from "react-router-dom";
import { useAppContext } from "../context/contextProvider";

import Home from "../pages/Home/home";
import Hotels from "../pages/Hotels/hotels";

import LogIn from "../pages/Login/logIn";
import Connexion from "../pages/Login/connexion";
import ConnexionMain from "../pages/Login/connexionMain";
import ConnexionEmp from "../pages/Login/connexionEmp";

const RoutesComponent = () => {
  const { chaines } = useAppContext();

  return (
    <Routes>
      <Route path="/" element={<Home />} />
      {chaines.map((chaine, index) => (
        <Route
          key={index}
          path={`/${chaine.name}`}
          element={<Hotels name={chaine.name} />}
        />
      ))}
      <Route path={"/hotels"} element={<Hotels />} />
      <Route path="/signUp" element={<ConnexionMain />} />
      <Route path="/button1" element={<LogIn />} />
      <Route path="/button2" element={<ConnexionEmp />} />
      <Route path="/button3" element={<Connexion />} />
    </Routes>
  );
};

export default RoutesComponent;
