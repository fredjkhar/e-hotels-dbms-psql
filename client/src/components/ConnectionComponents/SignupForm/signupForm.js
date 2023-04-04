import React, { useState } from "react";
import { signUp } from "../../../helpers/auth";

import "./signupForm.css";

export default function SignupForm({ onToggleForm }) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");

  return (
    <form className="signup__form" onSubmit={(e) => signUp(e, email, password)}>
      <div className="signup__form__box">
        <h1 className="signup__form__header">Sign up</h1>
        <h1 className="signup__form__login" onClick={onToggleForm}>
          Already have an account? Log in
        </h1>
        <input
          className="signup__form__input-field"
          type="email"
          placeholder="Enter your email"
          value = {email}
          onChange={(e) => setEmail(e.target.value)}
        ></input>
        <input
          className="signup__form__input-field"
          type="password"
          placeholder="Enter your password"
          value = {password}
          onChange={(e) => setPassword(e.target.value)}
        ></input>
        <button className="signup__form__button"> Sign up </button>
      </div>
    </form>
  );
}
