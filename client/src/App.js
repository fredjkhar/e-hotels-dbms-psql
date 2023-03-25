import { BrowserRouter as Router } from "react-router-dom";

import ContextProvider from "./context/contextProvider";
import Navbar from "./components/Navbar/navbar";
import RoutesComponent from "./Routes/routesComponent";

import "./App.css";

const App = () => {
  return (
    <ContextProvider className="app">
      <Router>
        <Navbar />
        <RoutesComponent />
      </Router>
    </ContextProvider>
  );
};

export default App;
