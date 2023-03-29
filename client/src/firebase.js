// Import the functions you need from the SDKs you need
import { initializeApp } from "firebase/app";
import { getAnalytics } from "firebase/analytics";
import { getAuth } from "firebase/auth";
// TODO: Add SDKs for Firebase products that you want to use
// https://firebase.google.com/docs/web/setup#available-libraries

// Your web app's Firebase configuration
// For Firebase JS SDK v7.20.0 and later, measurementId is optional
const firebaseConfig = {
  apiKey: "AIzaSyApN8NWVgC_seQjVOUFbnIr5cDwzV7URH0",
  authDomain: "e-hotels-dbms-psql.firebaseapp.com",
  projectId: "e-hotels-dbms-psql",
  storageBucket: "e-hotels-dbms-psql.appspot.com",
  messagingSenderId: "48394796865",
  appId: "1:48394796865:web:bb150d9822a5cbf3fcabc0",
  measurementId: "G-5HJBRVCX4Z"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const analytics = getAnalytics(app);
const auth = getAuth(app);

export { auth };