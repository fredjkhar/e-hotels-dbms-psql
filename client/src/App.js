
import Navbar from "./components/Navbar/navbar";
import Home from "./pages/Home/home";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Connexion from "./pages/Login/connexion";
import Connexion_main from "./pages/Login/connexion_main";
import ConnexionEmp from "./pages/Login/connexionEmp";
import LogIn from "./pages/Login/logIn";

import "./App.css";

const hotels = [
  { text: "hotel1" },
  { text: "hotel2" },
  { text: "hotel3" },
  { text: "hotel4" },
  { text: "hotel5" },
  { text: "hotel6" },
];

function App() {
  return (
    <div className="App">
      <Router>
        <Navbar items={hotels} />
        <Routes>
          <Route path="/" element={<Home items={hotels} />} />
          {/* Add more routes here */}
          <Route path="/signUp" element={<Connexion_main />} />
          <Route path="/button1" element={<LogIn />} />
          <Route path="/button2" element={<ConnexionEmp />} />
          <Route path="/button3" element={<Connexion />} />
        </Routes>
      </Router>
    </div>
  );
}

export default App;
