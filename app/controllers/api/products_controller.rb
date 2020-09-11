class Api::ProductsController < ApplicationController

  def all_products_action
    @products = Product.all
    render "all_products.json.jb"
  end

  def single_product_action
    @product = Product.first
    render "single_product.json.jb"
  end

  def second_product_action
    @product = Product.find_by(id: 2)
    render "single_product.json.jb"
  end

  def third_product_action
    @product = Product.find_by(id: 3)
    render "single_product.json.jb"
  end

  def any_product_action
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "single_product.json.jb"
  end

  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    @product = Product.find(params[:id])
    render "show.json.jb"
  end

  def create
    @product = Product.new({
      name: params[:name],
      price: params[:price],
      image_path: params[:image_path],
      description: params[:description]
      })
    @product.save
    render "show.json.jb"
  end

end
