import React, { useState, useRef } from "react";
import { signUp } from "../../../helpers/auth";
import { useAppContext } from "../../../context/contextProvider";
import { Link } from "react-router-dom";
import Alert from "@mui/material/Alert";

import "./signupForm.css";

export default function SignupForm() {
  const { setCookie } = useAppContext();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [repeatPassword, setRepeatPassword] = useState("");
  const [success, setSuccess] = useState(true);

  const passwordInput = useRef(null);
  const repeatPasswordInput = useRef(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    if (password === repeatPassword) {
      if (password.length > 5) {
        const error = signUp(e, email, password);
        console.log("hi", error)
        if (!error) {
          const role = email.includes("@hotels.com")
            ? "manager"
            : email.includes("hotel.com")
            ? "employee"
            : "user";

          setCookie(
            "credentials",
            { role: role, email: email, password: password },
            { path: "/" }
          );
        }
        else {
          setSuccess(false)
        }
      } else {
        passwordInput.current.setCustomValidity(
          "Password too short. The password should be at least 6 characters long."
        );
        passwordInput.current.reportValidity();
      }
    } else {
      repeatPasswordInput.current.setCustomValidity(
        "Passwords don't match. Please provide a matching password."
      );
      repeatPasswordInput.current.reportValidity();
    }
  };

  return (
    <form className="signup__form" onSubmit={(e) => handleSubmit(e)}>
      <div className={"signup__form__box " + (!success && "signup__form__box-expanded")}>
        <h1 className="signup__form__header">Sign up</h1>
        {!success && (
          <Alert severity="error" sx={{ width: 270, m: 1 }}>
            Email already in use.
          </Alert>
        )}
        <Link to="/login" style={{ textDecoration: "none" }}>
          <h1 className="signup__form__login">
            Already have an account? Log in
          </h1>
        </Link>
        <input
          className="signup__form__input-field"
          type="email"
          placeholder="Enter your email"
          value={email}
          required
          onChange={(e) => {setEmail(e.target.value); setSuccess(true);}}
        ></input>
        <input
          className="signup__form__input-field"
          type="password"
          placeholder="Enter your password"
          value={password}
          required
          onChange={(e) => {setPassword(e.target.value); setSuccess(true);}}
          ref={passwordInput}
        ></input>
        <input
          className="signup__form__input-field"
          type="password"
          required
          placeholder="Repeat your password"
          value={repeatPassword}
          onChange={(e) => {setRepeatPassword(e.target.value); setSuccess(true);}}
          ref={repeatPasswordInput}
        ></input>
        <button className="signup__form__button">Sign up</button>
      </div>
    </form>
  );
}
