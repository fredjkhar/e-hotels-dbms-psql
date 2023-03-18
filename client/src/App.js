import "./App.css";
import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import Connexion from './pages/Connexion';
import Connexion_main from './pages/Connexion_main';
import ConnexionEmp from './pages/ConnexionEmp';
import LogIn from './pages/LogIn';
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
          <Route path='/signUp' element={<Connexion_main/>}/>
          <Route path='/button1' element={<LogIn/>}/>
          <Route path='/button2' element={<ConnexionEmp/>}/>
          <Route path='/button3' element={<Connexion/>}/>

        </Routes>
      </Router>
    </div>
  );
}

export default App;
