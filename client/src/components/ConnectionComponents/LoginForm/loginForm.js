import { signInWithEmailAndPassword } from "firebase/auth";
import React, { useState } from "react";
import { useAppContext } from "../../../context/contextProvider";
import { auth } from "../../../helpers/firebase";
import { Link } from "react-router-dom";
import Alert from "@mui/material/Alert";

import "./loginForm.css";

export default function LoginForm() {
  const { setCookie } = useAppContext();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [success, setSuccess] = useState(true);
  const logIn = (e) => {
    e.preventDefault();
    signInWithEmailAndPassword(auth, email, password)
      .then((userCredential) => {
        const role = email.includes("@hotels.com")
          ? "manager"
          : (email.includes("hotel.com")
          ? "employee"
          : "user");

        setCookie(
          "credentials",
          { role: role, email: email, password: password },
          { path: "/" }
        );
      })
      .catch((error) => {
        console.log(error);
        setSuccess(false);
      });
  };

  return (
    <form className="login__form" onSubmit={logIn}>
      <div
        className={
          "login__form__box " + (!success && "login__form__box-expanded")
        }
      >
        <h1 className="login__form__header">Log in</h1>
        {!success && (
          <Alert severity="error" sx={{ width: 270, m: 1 }}>
            User not found. Please try again.
          </Alert>
        )}
        <Link to="/signup" style={{ textDecoration: "none" }}>
          <h1 className="login__form__signup">No account yet? Sign up</h1>
        </Link>
        <input
          className="login__form__input-field"
          type="email"
          placeholder="Enter your email"
          value={email}
          onChange={(e) => {
            setEmail(e.target.value);
            setSuccess(true);
          }}
        ></input>
        <input
          className="login__form__input-field"
          type="password"
          placeholder="Enter your password"
          values={password}
          onChange={(e) => {
            setPassword(e.target.value);
            setSuccess(true);
          }}
        ></input>
        <button className="login__form__button"> Log in </button>
      </div>
    </form>
  );
}
