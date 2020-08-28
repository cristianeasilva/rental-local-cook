class OrdersController < ApplicationController
  def new
    @cook = Cook.find(params[:cook_id])
    @order = Order.new
  end

  def create
    @cook = Cook.find(params[:cook_id])
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

  def destroy
    @order = Order.find(params[:id])
    @user = @order.user
    @order.destroy
    redirect_to user_url(@user, anchor: 'add-ingredient')
  end

  private

  def order_params
    params.require(:order).permit(:date)
  end
end
