
import React, { useState, useEffect} from "react";
import LoginForm from '../../components/LoginForm/loginForm'
import SignupForm from '../../components/SignupForm/signupForm'
import { auth } from "../../firebase";
import { useNavigate } from "react-router-dom";


function Connexion() {
  const [showLogin, setShowLogin] = useState(true);
  const [currentUser, setCurrentUser] = useState(null);
  const navigate= useNavigate();


  const handleToggleForm = () => {
    setShowLogin(!showLogin);
  };

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
      ) : showLogin ? (
        <LoginForm onToggleForm={handleToggleForm} />
      ) : (
        <SignupForm onToggleForm={handleToggleForm} />
      )}
    </div>
  );
}

export default Connexion;

