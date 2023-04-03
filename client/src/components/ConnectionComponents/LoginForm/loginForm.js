import {signInWithEmailAndPassword} from "firebase/auth";
import React, { useState } from "react";
import { auth } from "../../../firebase";

import "./loginForm.css";

export default function LoginForm({ onToggleForm }) {
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const logIn = (e) =>{
    e.preventDefault();
    signInWithEmailAndPassword(auth, email, password)
    .then((userCredential) => {
      console.log(userCredential)
    })
    .catch((error) => {
      console.log(error)
    });
  }
  return (
    <form className="login__form" onSubmit={logIn}>
      <div className="login__form__box">
        <h1 className="login__form__header">Log in</h1>
        <input
          className="login__form__input-field"
          type="email"
          placeholder="Enter your email"
          value={email}
          onChange={(e) => setEmail(e.target.value)}
        ></input>
        <input
          className="login__form__input-field"
          type="password"
          placeholder="Enter your password"
          values={password}
          onChange={(e) => setPassword(e.target.value)}
        ></input>
        <button className="login__form__button"> Log in </button>
        <div className="login__form__signup-line"></div>
        <h1 className="login__form__signup" onClick={onToggleForm}>
          No account yet? Sign up
        </h1>
      </div>
    </form>
  );
}