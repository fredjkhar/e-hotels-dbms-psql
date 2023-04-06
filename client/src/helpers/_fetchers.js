const BASE_URL = "http://localhost:8080";

export const query = (query, suffix, setRes) => {
  fetch(BASE_URL + suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: query,
  })
    .then((response) => response.json())
    .then((responseData) => setRes(responseData))
    .catch((error) => {
      console.error(error);
      setRes([]);
    });
};
