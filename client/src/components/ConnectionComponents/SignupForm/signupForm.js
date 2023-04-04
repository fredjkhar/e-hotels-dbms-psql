import React, { useState, useRef } from "react";
import { signUp } from "../../../helpers/auth";
import { Link } from "react-router-dom";

import "./signupForm.css";

export default function SignupForm() {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [repeatPassword, setRepeatPassword] = useState("");

  const passwordInput = useRef(null);
  const repeatPasswordInput = useRef(null);

  const handleSubmit = (e) => {
    e.preventDefault();
    if (password === repeatPassword) {
      if (password.length > 5) {
        signUp(e, email, password);
      } else {
        passwordInput.current.setCustomValidity("Password too short");
      }
    } else {
      repeatPasswordInput.current.setCustomValidity("Passwords don't match");
    }
  };

  return (
    <form className="signup__form" onSubmit={(e) => handleSubmit(e)}>
      <div className="signup__form__box">
        <h1 className="signup__form__header">Sign up</h1>
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
          onChange={(e) => setEmail(e.target.value)}
        ></input>
        <input
          className="signup__form__input-field"
          type="password"
          placeholder="Enter your password"
          value={password}
          required
          onChange={(e) => setPassword(e.target.value)}
          ref={passwordInput}
        ></input>
        <input
          className="signup__form__input-field"
          type="password"
          required
          placeholder="Repeat your password"
          value={repeatPassword}
          onChange={(e) => setRepeatPassword(e.target.value)}
          ref={repeatPasswordInput}
        ></input>
        <button className="signup__form__button">Sign up</button>
      </div>
    </form>
  );
}
