class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    @products = Product.all
    # if params[:search]
    # @products.where("name iLIKE ?", "#{params[:name]}")
    # end
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
      description: params[:description],
      inventory: params[:inventory],
      supplier_id: params[:supplier_id]
      })
    if @product.save # happy path
      render "show.json.jb"
    else # sad path
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity # same as using 'status: 422'
    end
  end

  def update
    @product = Product.find(params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.inventory = params[:inventory] || @product.inventory
    @product.supplier_id params[:supplier_id] || @product.supplier_id
    if @product.save # happy path
      render "show.json.jb"
    else # sad path
      render json: {errors: @product.errors.full_messages}, status: :expectation_failed # same as 'status: 417', but ultimately the error status code you choose is arbitrary
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "You have successfully destroyed the file"}
  end

end