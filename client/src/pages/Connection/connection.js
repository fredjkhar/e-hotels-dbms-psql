
import React, { useState, useEffect} from "react";
import LoginForm from '../../components/ConnectionComponents/LoginForm/loginForm'
import SignupForm from '../../components/ConnectionComponents/SignupForm/signupForm'
import { auth } from "../../firebase";
import { useNavigate } from "react-router-dom";


function Connection() {
  const [showLogin, setShowLogin] = useState(true);
  const [currentUser, setCurrentUser] = useState(null);
  const navigate= useNavigate();

  useEffect(() => {
    const unsubscribe = auth.onAuthStateChanged((user) => {
      setCurrentUser(user);
    });
    setShowLogin(!showLogin)
    return unsubscribe;
  }, []);

  return (
    <div>
     {currentUser ? (
        navigate("/")
      ) : showLogin ? (
        <LoginForm onToggleForm={() => setShowLogin(!showLogin)} />
      ) : (
        <SignupForm onToggleForm={() => setShowLogin(!showLogin)} />
      )}
    </div>
  );
}

export default Connection;

