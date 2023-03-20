import React, { useState, useEffect } from "react";

const AppContext = React.createContext();

const BASE_URL = "http://localhost:8080";

const ContextProvider = ({ children }) => {
  const [loaded, setLoaded] = useState(false);
  const [chaines, setChaines] = useState(null);
  const [hotels, setHotels] = useState(null);

  // Fetch hotelGroups from DB on website load.
  useEffect(() => {
    fetch(BASE_URL + "/api/hotelGroups")
      .then((response) => response.json())
      .then((responseData) => {
        setChaines(responseData)
        setLoaded(true);
      })
      .catch((error) => console.error("Error: ", error));
  }, []);

  // Fetch hotels from DB on website load.
  useEffect(() => {
    fetch(BASE_URL + "/api/hotels")
      .then((response) => response.json())
      .then((responseData) => setHotels(responseData))
      .catch((error) => console.error("Error: ", error));
  }, []);

  return (
    <AppContext.Provider value={{ chaines, hotels }}>
      {loaded && children}
    </AppContext.Provider>
  );
};

export const useContext = () => React.useContext(AppContext);

export default ContextProvider;
