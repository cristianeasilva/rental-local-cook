class CooksController < ApplicationController

  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @cook = Cook.new
  end

  def create
    @user = User.find(params[:user_id])
    @cook = Cook.new(cook_params)
    @cook.user = @user
  end

  private

  def cook_params
    params.require(:cook).permit(:user_id, :menu_id, :languages, :address, :schedulle, :price)
  end
end
