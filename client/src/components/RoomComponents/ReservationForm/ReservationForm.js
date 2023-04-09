import React, { useEffect, useState } from "react";

import "./ReservationForm.css";
import { query } from "../../../helpers/_fetchers";
import { useAppContext } from "../../../context/contextProvider";

const ReservationForm = (props) => {
  const { room } = props;

  const [formData, setFormData] = useState({
    NAS_client: "",
    first_name: "",
    last_name: "",
    age: "",
    street_num: "",
    street: "",
    city: "",
    province: "",
    country: "",
    postal_code: "",
    phone_num: "",
    email: "",
    registration_date: new Date().toISOString().slice(0, 10),
    password: "",
  });

  const [confirmationMessage, setConfirmationMessage] = useState("");

  const { mail, pass, startDate, endDate } = useAppContext();

  const [client, setClient] = useState([]);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
    console.log("info:");
    console.log(mail);
    console.log(pass);
  };

  const HandleSubmit = (e) => {
    e.preventDefault();
      //check if the client is alreay in db
      if (client.length === 0) {
        //check if the client has an email/password
        if (mail === "" && pass === "") {
          query(
            `INSERT INTO client VALUES( ${formData.NAS_client}, '${formData.first_name}','${formData.last_name}', ${formData.age}, ${formData.street_num}, '${formData.street}', '${formData.city}', '${formData.province}', '${formData.country}', '${formData.postal_code}', '${formData.phone_num}', '${formData.email}', '${formData.registration_date}', '${formData.password}' )`,
            "/api/sql"
          );
        } else {
          query(
            `INSERT INTO client VALUES( ${formData.NAS_client}, '${formData.first_name}','${formData.last_name}', ${formData.age}, ${formData.street_num}, '${formData.street}', '${formData.city}', '${formData.province}', '${formData.country}', '${formData.postal_code}', '${formData.phone_num}', '${mail}', '${formData.registration_date}', '${pass}' )`,
            "/api/sql"
          );
        }
      } 
      // else {
      //   alert("client in db");
      // }

      //create a reservation
      if (startDate === "" || endDate === "") {
        //alert("Please enter both a start and end date.");
        setConfirmationMessage("Please enter both a start and end date.");
        return;
      } else { 
        query(
          `INSERT INTO reservation VALUES ('${startDate}','${endDate}',${formData.NAS_client},${room.room_number} )`,
          "/api/sql"
        )
        setConfirmationMessage("Room booked!");

      }
  };

  useEffect(() => {
    query(
      `SELECT * from client WHERE NAS_client = '${formData.NAS_client}'`,
      "/api/sql",
      (result) => setClient(result)
    );
  }, [formData.NAS_client]);

  return (
    <div className="form__background room__wrapper">
      <form className="reservation__form" onSubmit={HandleSubmit}>
        <h1> Enter your info: </h1>
        <div className="reservation__client__box">
          <div className="input__box">
            <label htmlFor="NAS_client">NAS:</label>
            <input
              type="number"
              id="NAS_client"
              name="NAS_client"
              value={formData.NAS_client}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="first_name">First Name:</label>
            <input
              type="text"
              id="first_name"
              name="first_name"
              value={formData.first_name}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="last_name">Last Name:</label>
            <input
              type="text"
              id="last_name"
              name="last_name"
              value={formData.last_name}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="age">Age:</label>
            <input
              type="number"
              id="age"
              name="age"
              value={formData.age}
              onChange={handleChange}
              min="18"
              required
            />
          </div>
        </div>

        <div className=" reservation__client__box ">
          <div className="input__box">
            <label htmlFor="street_num">Street Number:</label>
            <input
              type="number"
              id="street_num"
              name="street_num"
              value={formData.street_num}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="street">Street:</label>
            <input
              type="text"
              id="street"
              name="street"
              value={formData.street}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="city">City:</label>
            <input
              type="text"
              id="city"
              name="city"
              value={formData.city}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="province">Province:</label>
            <input
              type="text"
              id="province"
              name="province"
              value={formData.province}
              onChange={handleChange}
              required
            />
          </div>
        </div>

        <div className="reservation__client__box">
          <div className="input__box">
            <label htmlFor="country">Country:</label>
            <input
              type="text"
              id="country"
              name="country"
              value={formData.country}
              onChange={handleChange}
              required
            />
          </div>

          <div className="input__box">
            <label htmlFor="postal_code">Postal Code:</label>
            <input
              type="text"
              id="postal_code"
              name="postal_code"
              value={formData.postal_code}
              onChange={handleChange}
              required
            />
          </div>
          <div className="input__box">
            <label htmlFor="phone_num">Phone Number:</label>
            <input
              type="tel"
              id="phone_num"
              name="phone_num"
              value={formData.phone_num}
              onChange={handleChange}
              required
            />
          </div>
        </div>

        <div className="reservation__client__box">
          {mail === "" && pass === "" && (
            <>
              <div className="input__box">
                <label htmlFor="email">Email:</label>
                <input
                  type="email"
                  id="email"
                  name="email"
                  value={formData.email}
                  onChange={handleChange}
                  required
                />
              </div>

              <div className="input__box">
                <label htmlFor="password">Password:</label>
                <input
                  type="password"
                  id="password"
                  name="password"
                  value={formData.password}
                  onChange={handleChange}
                  required
                />
              </div>
            </>
          )}
          {confirmationMessage && <div className="reservation__confirmation__message">{confirmationMessage}</div>}
        </div>

        <button type="submit">Reserve</button>
      </form>
    </div>
  );
};

export default ReservationForm;
