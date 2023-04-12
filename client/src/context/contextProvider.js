import React, { useState } from "react";
import { useCookies } from "react-cookie";

const AppContext = React.createContext();

const ContextProvider = ({ children }) => {
  //Filters for hotels
  const [groupName, setGroupName] = useState("All");
  const [areaName, setAreaName] = useState("All");
  const [minPrice, setMinPrice] = useState(400);
  const [minRating, setMinRating] = useState(0);
  const [star, setStar] = useState(0);

  //Filter for rooms
  const [hotelName, setHotelName] = useState("All");
  const [roomPrice, setRoomPrice] = useState(500);
  const [capacity, setCapacity] = useState(0);
  const [view, setView] = useState("All");
  const [problems, setProblems] = useState("All");
  const [startDate, setStartDate] = useState("");
  const [endDate, setEndDate] = useState("");
  const [size, setSize] = useState(10);

  //Credentials and role cookie
  const [cookies, setCookie, removeCookie] = useCookies(["credentials"]);

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
        hotelName,
        setHotelName,
        roomPrice,
        setRoomPrice,
        capacity,
        setCapacity,
        view,
        setView,
        problems,
        setProblems,
        startDate,
        setStartDate,
        endDate,
        setEndDate,
        cookies,
        setCookie,
        removeCookie,
        size, 
        setSize
      }}
    >
      {children}
    </AppContext.Provider>
  );
};

export const useAppContext = () => React.useContext(AppContext);

export default ContextProvider;
