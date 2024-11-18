class OrdersController < ApplicationController
  def new
    @order=Order.new
  end

  def create
    @order = Order.new(orders_params)
    @order.cart= Cart.last
    if @order.save
      redirect_to carts_path
    else
      render :new
    end
  end
  
  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to carts_path
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    @order.update(orders_params)
    redirect_to carts_path
  end

  private

  def orders_params
    params.require(:order).permit(:size, :quantity, :cart_id, :pizza_id)
  end
end