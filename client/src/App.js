import "./App.css";
import Navbar from "./components/Navbar";
import Home from "./pages/Home";
import { BrowserRouter as Router, Route, Routes } from "react-router-dom";

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
        </Routes>
      </Router>
    </div>
  );
}

export default App;
