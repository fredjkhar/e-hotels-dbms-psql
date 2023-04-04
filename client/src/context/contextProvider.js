import React, { useState, useEffect } from "react";

const AppContext = React.createContext();

const BASE_URL = "http://localhost:8080";

const ContextProvider = ({ children }) => {
  // Resources
  const [chaines, setChaines] = useState(null);
  const [hotels, setHotels] = useState(null);

  //Filter values
  const [chaineName, setChaineName] = useState("All");
  const [areaName, setAreaName] = useState("All");
  const [priceRange, setPriceRange] = useState(400);
  const [minRating, setMinRating] = useState(0);
  const [groupName, setGroupName] = useState(null);
  const [star, setStar] = useState(0);

  //Role value (three possible values/states: ['manager', 'user', 'employee'] or empty string)
  const [role, setRole] = useState("");

  // Fetch hotelGroups from DB on website load.
  useEffect(() => {
    fetch(BASE_URL + "/api/hotelGroups")
      .then((response) => response.json())
      .then((responseData) => setChaines(responseData))
      .catch((error) => console.error("Error: ", error));

    fetch(BASE_URL + "/api/hotels")
      .then((response) => response.json())
      .then((responseData) => setHotels(responseData))
      .catch((error) => console.error("Error: ", error));
  }, []);

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
        chaineName,
        setChaineName,
        areaName,
        setAreaName,
        star,
        setStar,
        role,
        setRole,
      }}
    >
      {chaines && hotels && children}
    </AppContext.Provider>
  );
};

export const useAppContext = () => React.useContext(AppContext);

export default ContextProvider;
