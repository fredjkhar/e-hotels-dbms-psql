const BASE_URL = "http://localhost:8080";

export const query = async (query, suffix, setRes, text = false) => {
  await fetch(BASE_URL + suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: query,
  })
  .then((response) => {
    if (response.ok) return response.json();
    else return response.text();
  })
  .then((response) => {
    setRes(
      text ? JSON.stringify(response, undefined, 2) : response
    );
  })
  .catch((error) => {
    setRes("Error: ", error);
    console.error("Error: ", error);
  });
};

export const update = async (query, suffix, text = false) => {
  await fetch(BASE_URL + suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: query,
  })
    .then((response) => response.json())
    .then((responseData) => console.log(responseData))
    .catch((error) => {
      console.error(error);
    });
};
