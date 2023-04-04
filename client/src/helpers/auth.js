import { createUserWithEmailAndPassword } from "firebase/auth";
import { auth } from "./firebase";

export const signUp = (e, email, password) => {
  e.preventDefault();
  createUserWithEmailAndPassword(auth, email, password)
    .then((userCredential) => {
      console.log(userCredential);
    })
    .catch((error) => {
      console.log(error);
    });
};
