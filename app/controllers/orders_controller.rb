class OrdersController < ApplicationController
  before_action :set_order, only: [:show]

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    @order.user = current_user
    @order.cook = @cook

    if @order.save
      redirect_to @order, notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def show
    @order = Order.find(params[:id])
  end

  private

  def order_params
    params.require(:order).permit(:date)
  end
end
