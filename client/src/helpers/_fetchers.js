const BASE_URL = "http://localhost:8080";

export const query = async (query, suffix, setRes) => {
  await fetch(BASE_URL + suffix, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: query,
  })
    .then((response) => response.json())
    .then((responseData) => setRes(responseData))
    .catch((error) => {
      console.error(error);
      setRes([error]);
    });
};

export const update = async (query, suffix) => {
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