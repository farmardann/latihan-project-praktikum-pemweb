fetch("endPointAPI")
  .then((response) => response.json())
  .then((data) => console.log(data))
  .catch((error) => console.error("Terjadi kesalahan:", error));
