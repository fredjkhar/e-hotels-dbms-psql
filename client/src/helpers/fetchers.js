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

export const postRequest = (setRes, URL_suffix, args) => {
  fetch(BASE_URL + URL_suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: args,
  })
    .then((response) => response.text())
    .then((response) => setRes(response))
    .catch((error) => {
      setRes("Error: ", error);
      console.error("Error: ", error);
    });
};

export const deleteRequestById = (setRes, URL_suffix, args) => {
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

export const putRequest = (setRes, URL_suffix, args) => {
  if (!args || args.length === 0) {
    let msg =
      "Error: Please specify the id of the record to be updated in the arguments textField.";
    setRes(msg);
    console.error(msg);
    return;
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
};

const isJSON = (str) => {
  try {
    JSON.parse(str);
  } catch (e) {
    return false;
  }
  return true;
};
