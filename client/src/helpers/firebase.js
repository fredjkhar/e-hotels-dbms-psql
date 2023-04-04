import { initializeApp } from "firebase/app";
import { getAuth } from "firebase/auth";

const firebaseConfig = {
  apiKey: "AIzaSyApN8NWVgC_seQjVOUFbnIr5cDwzV7URH0",
  authDomain: "e-hotels-dbms-psql.firebaseapp.com",
  projectId: "e-hotels-dbms-psql",
  storageBucket: "e-hotels-dbms-psql.appspot.com",
  messagingSenderId: "48394796865",
  appId: "1:48394796865:web:bb150d9822a5cbf3fcabc0",
  measurementId: "G-5HJBRVCX4Z",
};

const app = initializeApp(firebaseConfig);
const auth = getAuth(app);

export { auth };
