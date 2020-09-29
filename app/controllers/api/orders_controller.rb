class Api::OrdersController < ApplicationController

  before_action :authenticate_user

  def index
    @orders = current_user.orders
    render "index.json.jb"
  end

  # def create
  #   @order = Order.new(
  #     # order_id: order.id,
  #     user_id: current_user.id,
  #     product_id: params[:product_id], 
  #     quantity: params[:quantity]
  #     )
  #     if @order.save
  #       @order.subtotal = @order.quantity * Product.find(@order.product_id).price 
  #       @order.tax = @order.subtotal * 0.09
  #       @order.total = @order.subtotal + @order.tax
  #       render "show.json.jb"
  #     else
  #       render json: {message: "failed"}, status: 422
  #     end
  #   end

  # def create
  #   @order = Order.new(
  #     user_id: current_user.id,
  #     product_id: params[:product_id], 
  #     quantity: params[:quantity]
  #     )
  #     @order.subtotal = @order.quantity * @order.product.price
  #     # OR    @order.subtotal = params[:quantity].to_i * @order.product.price
  #     @order.tax = @order.subtotal * 0.09
  #     @order.total = @order.tax + @order.subtotal
  #     if @order.save
  #       render "show.json.jb"
  #     else
  #       render json: {message: "failed"}, status: 422
  #     end
  # end

  def create
    carted_products = current_user.carted_products.where(status: "carted")
    
    calculated_subtotal = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
    end
    
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax
    
    @order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total
    )
    if @order.save
      carted_products.update_all(status: "purchased", order_id: @order.id)
      render "show.json.jb"

    else
      render json: { errors: @order.errors.full_messages }, status: :unproccessable_entity
    end
  end

  def show
    @order = current_user.orders.find(params[:id])
    render "show.json.jb"
  end

end