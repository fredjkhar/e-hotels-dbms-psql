import { BrowserRouter as Router } from "react-router-dom";

import ContextProvider from "./context/contextProvider";
import Navbar from "./components/Navbar/navbar";
import RoutesComponent from "./routes/routesComponent";
import { CookiesProvider } from "react-cookie";

import "./App.css";

const App = () => {
  return (
    <CookiesProvider>
      <ContextProvider className="app">
        <Router>
          <Navbar />
          <RoutesComponent />
        </Router>
      </ContextProvider>
    </CookiesProvider>
  );
};

export default App;
