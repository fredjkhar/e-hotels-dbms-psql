import React, { useState, useEffect } from "react";

const AppContext = React.createContext();

const BASE_URL = "http://localhost:8080";

const ContextProvider = ({ children }) => {
  // Resources
  const [rooms, setRooms] = useState(null);

  //Filter values
  const [groupName, setGroupName] = useState("All");
  const [areaName, setAreaName] = useState("All");
  const [minPrice, setMinPrice] = useState(400);
  const [minRating, setMinRating] = useState(0);
  const [star, setStar] = useState(0);

  //Role value (three possible values/states: ['manager', 'user', 'employee'] or empty string)
  const [role, setRole] = useState(""); 

  //Filter for rooms
  const [hotelName, setHotelName] = useState("All");
  const[roomPrice, setRoomPrice] = useState(1500);
  const[capacity, setCapacity] = useState(0);
  const[view, setView] = useState("All");
  const[problems, setProblems] = useState("All");

  // Fetch hotelGroups from DB on website load.
  useEffect(() => {
    fetch(BASE_URL + "/api/rooms")
      .then((response) => response.json())
      .then((responseData) => setRooms(responseData))
      .catch((error) => console.error("Error: ", error));
  }, []);

  return (
    <AppContext.Provider
      value={{
        minPrice,
        setMinPrice,
        minRating,
        setMinRating,
        groupName,
        setGroupName,
        areaName,
        setAreaName,
        star,
        setStar,
        role,
        setRole,
        rooms,
        hotelName,
        setHotelName,
        roomPrice,
        setRoomPrice,
        capacity,
        setCapacity,
        view,
        setView,
        problems,
        setProblems
      }}
    >
      {children}
    </AppContext.Provider>
  );
};

export const useAppContext = () => React.useContext(AppContext);

export default ContextProvider;
