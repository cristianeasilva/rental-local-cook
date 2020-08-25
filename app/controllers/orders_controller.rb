class OrdersController < ApplicationController
  #before_action :set_cook, only: [:create, :new, :show]

  def new
    @order = Order.new
  end

  def create

    @order = Order.new(order_params)

    @order.user = current_user
    @order.cook = Cook.first

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def show
    @order = Order.first
  end

  private

  def order_params
    params.require(:order).permit(:date)
  end

  def set_cook
    @cook = Cook.find(params["cook_id"])
  end
end
