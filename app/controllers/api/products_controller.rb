class Api::ProductsController < ApplicationController

  def product_action
    @product = Product.all
    render "product.json.jb"
  end
end
