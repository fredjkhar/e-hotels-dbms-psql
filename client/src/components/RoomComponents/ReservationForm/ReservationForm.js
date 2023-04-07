import React, { useState } from "react";

import "./ReservationForm.css";
import { query } from "../../../helpers/_fetchers";
import { useAppContext } from "../../../context/contextProvider";

const ReservationForm = () => {
  const [formData, setFormData] = useState({
    start_date: "",
    end_date: "",
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

  const { mail, pass } = useAppContext();

  const [client, setClient] = useState(null);

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
    console.log("info:");
    console.log(mail);
    console.log(pass);
  };

  const HandleSubmit = (e) => {
    e.preventDefault();
    query(
      `INSERT INTO client VALUES( ${formData.NAS_client}, '${formData.first_name}','${formData.last_name}', ${formData.age}, ${formData.street_num}, '${formData.street}', '${formData.city}', '${formData.province}', '${formData.country}', '${formData.postal_code}', '${formData.phone_num}', '${formData.email}', '${formData.registration_date}', '${formData.password}' )`,
      "/api/sql",
      setClient
    );
  };

  return (
    <div className="form__background room__wrapper">
      <form className="reservation__form" onSubmit={HandleSubmit}>
        <h1> Pick your reservation dates: </h1>
        <label htmlFor="start_date">Start date:</label>
        <input
          type="date"
          id="start_date"
          name="start_date"
          value={formData.start_date}
          onChange={handleChange}
        />
        <br />

        <label htmlFor="end_date">End date:</label>
        <input
          type="date"
          id="end_date"
          name="end_date"
          value={formData.end_date}
          onChange={handleChange}
        />
        <br />

        <h1> Enter your info: </h1>
        <label htmlFor="NAS_client">NAS:</label>
        <input
          type="number"
          id="NAS_client"
          name="NAS_client"
          value={formData.NAS_client}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="first_name">First Name:</label>
        <input
          type="text"
          id="first_name"
          name="first_name"
          value={formData.first_name}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="last_name">Last Name:</label>
        <input
          type="text"
          id="last_name"
          name="last_name"
          value={formData.last_name}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="age">Age:</label>
        <input
          type="number"
          id="age"
          name="age"
          value={formData.age}
          onChange={handleChange}
          required
          min="18"
        />
        <br />

        <label htmlFor="street_num">Street Number:</label>
        <input
          type="number"
          id="street_num"
          name="street_num"
          value={formData.street_num}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="street">Street:</label>
        <input
          type="text"
          id="street"
          name="street"
          value={formData.street}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="city">City:</label>
        <input
          type="text"
          id="city"
          name="city"
          value={formData.city}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="province">Province:</label>
        <input
          type="text"
          id="province"
          name="province"
          value={formData.province}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="country">Country:</label>
        <input
          type="text"
          id="country"
          name="country"
          value={formData.country}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="postal_code">Postal Code:</label>
        <input
          type="text"
          id="postal_code"
          name="postal_code"
          value={formData.postal_code}
          onChange={handleChange}
          required
        />
        <br />

        <label htmlFor="phone_num">Phone Number:</label>
        <input
          type="tel"
          id="phone_num"
          name="phone_num"
          value={formData.phone_num}
          onChange={handleChange}
          required
        />
        <br />

        {mail === "" && pass === "" && (
          <>
            <label htmlFor="email">Email:</label>
            <input
              type="email"
              id="email"
              name="email"
              value={formData.email}
              onChange={handleChange}
              required
            />
            <br />

            <label htmlFor="password">Password:</label>
            <input
              type="password"
              id="password"
              name="password"
              value={formData.password}
              onChange={handleChange}
              required
            />
            <br />
          </>
        )}

        <button type="submit">Reserve</button>
      </form>
    </div>
  );
};

export default ReservationForm;
