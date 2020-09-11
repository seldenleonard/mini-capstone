Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/single_product_path" => "products#single_product_action"
    get "/second_product_path" => "products#second_product_action"
    get "/third_product_path" => "products#third_product_action"
    get "/any_product_path" => "products#any_product_action"
    get "/any_product_path/:id" => "products#any_product_action"
    
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
  
  end

end
