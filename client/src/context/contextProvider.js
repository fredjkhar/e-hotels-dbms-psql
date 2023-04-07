import React, { useState } from "react";

const AppContext = React.createContext();

const ContextProvider = ({ children }) => {
  //Filter values
  const [groupName, setGroupName] = useState("All");
  const [areaName, setAreaName] = useState("All");
  const [minPrice, setMinPrice] = useState(400);
  const [minRating, setMinRating] = useState(0);
  const [star, setStar] = useState(0);

  //Role value (three possible values/states: ['manager', 'user', 'employee'] or empty string)
  const [role, setRole] = useState("");
  const [nas, setNas] = useState(0);
  const[mail, setMail] = useState("");
  const[pass, setPass] = useState("");

  //Filter for rooms
  const [hotelName, setHotelName] = useState("All");
  const [roomPrice, setRoomPrice] = useState(1500);
  const [capacity, setCapacity] = useState(0);
  const [view, setView] = useState("All");
  const [problems, setProblems] = useState("All");

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
        nas,
        setNas,
        mail,
        setMail,
        pass,
        setPass
      }}
    >
      {children}
    </AppContext.Provider>
  );
};

export const useAppContext = () => React.useContext(AppContext);

export default ContextProvider;
