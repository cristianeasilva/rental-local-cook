class CooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cooks = Cook.all
  end

  def show
    @cook = Cook.find(params[:id])
  end

  def new
    @user = current_user
    @cook = Cook.new
  end

  def create
    @user = current_user
    @cook = Cook.new(cook_params)
    @cook.user = @user
    if @cook.save
      redirect_to cook_path(@cook.id), notice: 'Your cook profile has been created!'
    else
      render :new
    end
  end

  private

  def cook_params
    params.require(:cook).permit(:name, :user_id, :location, :service, :price, :photo)
  end
end
