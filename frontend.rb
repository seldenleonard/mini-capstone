require "http"

response = HTTP.get("localhost:3000/api/single_product_path")
product = response.parse
pp product