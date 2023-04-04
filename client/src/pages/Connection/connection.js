
import React, { useState, useEffect} from "react";
import LoginForm from '../../components/ConnectionComponents/LoginForm/loginForm'
import SignupForm from '../../components/ConnectionComponents/SignupForm/signupForm'
import { auth } from "../../helpers/firebase";
import { useNavigate } from "react-router-dom";


function Connection(props) {
  let status = props.status;
  const [currentUser, setCurrentUser] = useState(null);
  const navigate= useNavigate();

  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((user) => {
      setCurrentUser(user);
    });
    return unsubscribe;
  }, []);

  return (
    <div>
     {currentUser ? (
        navigate("/")
      ) : status === "login" ? (
        <LoginForm />
      ) : (
        <SignupForm />
      )}
    </div>
  );
}

export default Connection;

