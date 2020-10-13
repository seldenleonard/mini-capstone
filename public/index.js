axios.get("localhost:3000/api/products").then(function (response) {
  var products = response.data;
  console.log(products);
});
