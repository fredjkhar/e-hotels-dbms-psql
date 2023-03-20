import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

import Home from "./pages/Home/home";
import LogIn from "./pages/Login/logIn";
import Connexion from "./pages/Login/connexion";
import Connexion_main from "./pages/Login/connexion_main";
import ConnexionEmp from "./pages/Login/connexionEmp";

import ContextProvider from "./context/contextProvider";

import Navbar from "./components/Navbar/navbar";

import "./App.css";

const App = () => {
  return (
      <ContextProvider className="app">
        <Router>
          <Navbar/>
          <Routes>
            <Route path="/" element={<Home/>} />
            <Route path="/signUp" element={<Connexion_main />} />
            <Route path="/button1" element={<LogIn />} />
            <Route path="/button2" element={<ConnexionEmp />} />
            <Route path="/button3" element={<Connexion />} />
          </Routes>
        </Router>
      </ContextProvider>
  );
}

export default App;
