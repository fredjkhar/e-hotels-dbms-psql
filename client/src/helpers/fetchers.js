import { signUp } from "./auth";

const BASE_URL = "http://localhost:8080";

export const getRequest = (setRes, URL_suffix) => {
  fetch(BASE_URL + URL_suffix)
    .then((response) => {
      if (response.ok) return response.json();
      else return response.text();
    })
    .then((response) => {
      setRes(
        isJSON(response) ? response : JSON.stringify(response, undefined, 2)
      );
    })
    .catch((error) => {
      setRes("Error: ", error);
      console.error("Error: ", error);
    });
};

export const getRequestById = (setRes, URL_suffix, args) => {
  if (!args && args.length === 0) {
    let msg =
      "Error: Please specify a valid id of the record to be selected in the arguments textField.";
    setRes(msg);
    console.error(msg);
    return;
  }
  fetch(BASE_URL + URL_suffix)
    .then((response) => {
      if (response.ok) return response.json();
      else return response.text();
    })
    .then((response) => {
      setRes(
        isJSON(response) ? response : JSON.stringify(response, undefined, 2)
      );
    })
    .catch((error) => {
      setRes("Error: ", error);
      console.error("Error: ", error);
    });
};

export const postRequest = (e, setRes, URL_suffix, args) => {
  if (!args && args.length === 0) {
    let msg = "Error: Please specify a record to be created";
    setRes(msg);
    console.error(msg);
    return;
  }
  let err = false;
  fetch(BASE_URL + URL_suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: args,
  })
    .then((response) => response.text())
    .then((response) => setRes(response))
    .catch((error) => {
      err = true;
      setRes("Error: ", error);
      console.error("Error: ", error);
    });
  if (
    !err &&
    (URL_suffix.includes("/employees") || URL_suffix.includes("/clients"))
  ) {
    try {
      let json = JSON.parse(args);
      let email = json.email;
      let password = json.password;

      createUser(e, URL_suffix, email, password);
    } catch (error) {
      setRes("Error: ", error);
      console.error("Error: ", error);
    }
  }
};

export const deleteRequestById = (setRes, URL_suffix, args) => {
  if (!args && args.length === 0) {
    let msg = "Error: Please specify a record to be updated";
    setRes(msg);
    console.error(msg);
    return;
  }
  if (!args || args.length === 0) {
    let msg =
      "Error: Please specify the id of the record to be deleted in the arguments textField.";
    setRes(msg);
    console.error(msg);
    return;
  }
  fetch(BASE_URL + URL_suffix, { method: "DELETE" })
    .then((response) => response.text())
    .then((response) => setRes(response))
    .catch((error) => {
      setRes("Error: ", error);
      console.error("Error: ", error);
    });
};

export const putRequest = (e, setRes, URL_suffix, args) => {
  if (!args || args.length === 0) {
    let msg =
      "Error: Please specify the id of the record to be updated in the arguments textField.";
    setRes(msg);
    console.error(msg);
    return;
  }
  let record = "";
  if (URL_suffix.includes("/employees") || URL_suffix.includes("/clients")) {
    //Getting the original record first
    fetch(BASE_URL + URL_suffix)
      .then((response) => {
        if (response.ok) return response.json();
        else return response.text();
      })
      .then((response) => {
        record = isJSON(response)
          ? response
          : JSON.stringify(response, undefined, 2);
      })
      .catch((error) => {
        setRes("Error: Failed to fetch original record: ", error);
        console.error("Error: Failed to fetch original record: ", error);
        return;
      });
  }
  fetch(BASE_URL + URL_suffix, {
    method: "PUT",
    headers: { "Content-Type": "application/json" },
    body: args,
  })
    .then((response) => response.text())
    .then((response) => setRes(response))
    .catch((error) => {
      setRes("Error: ", error);
      console.error("Error: ", error);
    });

  if (URL_suffix.includes("/employees") || URL_suffix.includes("/clients")) {
    try {
      let _json = record;
      if (isJSON(record)) _json = JSON.parse(record);
      let _email = _json.email;
      let _password = _json.password;

      let json = JSON.parse(args);
      let email = json.email;
      let password = json.password;

      if (email !== _email || password !== _password) {
        createUser(e, URL_suffix, email, password);
      }
    } catch (error) {
      setRes("Error: ", error);
      console.error("Error: ", error);
    }
  }
};

const createUser = (e, URL_suffix, email, password) => {
  if (
    URL_suffix.includes("/employees") &&
    email &&
    !email.includes("@hotel.com")
  ) {
    email = email.substring(0, email.indexOf("@")) + "@hotel.com";
  }
  signUp(e, email, password);
};

const isJSON = (str) => {
  try {
    JSON.parse(str);
  } catch (e) {
    return false;
  }
  return true;
};
