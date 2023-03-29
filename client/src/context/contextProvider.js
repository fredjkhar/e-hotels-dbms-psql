import React, { useState, useEffect } from "react";

const AppContext = React.createContext();

const BASE_URL = "http://localhost:8080";

const ContextProvider = ({ children }) => {
  // Resources
  const [loaded, setLoaded] = useState(0);
  const [chaines, setChaines] = useState(null);
  const [hotels, setHotels] = useState(null);

  //Filter values
  const [priceRange, setPriceRange] = useState(200);
  const [minRating, setMinRating] = useState(0);
  var [groupName, setGroupName] = useState(null);

  // Fetch hotelGroups from DB on website load.
  useEffect(() => {
    fetch(BASE_URL + "/api/hotelGroups")
      .then((response) => response.json())
      .then((responseData) => {
        setChaines(responseData)
        setLoaded(true);
      })
      .catch((error) => console.error("Error: ", error));

    fetch(BASE_URL + "/api/hotels")
      .then((response) => response.json())
      .then((responseData) => {
        setHotels(responseData);
        setLoaded(true);
      })
      .catch((error) => console.error("Error: ", error));
  }, []);

  // Fetch hotels from DB on website load.
  useEffect(() => {}, []);

  return (
    <AppContext.Provider
      value={{
        chaines,
        hotels,
        priceRange,
        setPriceRange,
        minRating,
        setMinRating,
        groupName,
        setGroupName,
      }}
    >
      {loaded && children}
    </AppContext.Provider>
  );
};

export const useAppContext = () => React.useContext(AppContext);

export default ContextProvider;
