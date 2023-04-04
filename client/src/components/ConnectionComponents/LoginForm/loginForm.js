import { signInWithEmailAndPassword } from "firebase/auth";
import React, { useState } from "react";
import { useAppContext } from "../../../context/contextProvider";
import { auth } from "../../../helpers/firebase";
import { Link } from "react-router-dom";
import Alert from "@mui/material/Alert";

import "./loginForm.css";

export default function LoginForm() {
  const { setRole } = useAppContext();
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [success, setSuccess] = useState(true);
  const logIn = (e) => {
    e.preventDefault();
    signInWithEmailAndPassword(auth, email, password)
      .then((userCredential) => {
        console.log(userCredential);
        if (email === "manager@ehotels.com" && password === "manager123")
          setRole("manager");
        else if (email.includes("ehotels.com")) setRole("employee");
        else setRole("user");
      })
      .catch((error) => {
        console.log(error);
        setSuccess(false)
      });
  };
  return (
    <form className="login__form" onSubmit={logIn}>
      <div className="login__form__box">
        <h1 className="login__form__header">Log in</h1>
        {!success && <Alert severity="error" sx={{width: 270}}>User not found. Please try again.</Alert>}
        <input
          className="login__form__input-field"
          type="email"
          placeholder="Enter your email"
          value={email}
          onChange={(e) => {setEmail(e.target.value); setSuccess(true);}}
        ></input>
        <input
          className="login__form__input-field"
          type="password"
          placeholder="Enter your password"
          values={password}
          onChange={(e) => {setPassword(e.target.value); setSuccess(true);}}
        ></input>
        <button className="login__form__button"> Log in </button>
        <div className="login__form__signup-line"></div>
        <Link
          className="login__form__signup"
          to="/signup"
          style={{ textDecoration: "none" }}
        >
          <p>No account yet? Sign up</p>
        </Link>
      </div>
    </form>
  );
}
