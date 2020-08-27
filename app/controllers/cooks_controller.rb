class CooksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    search = params[:search]
    if search.present?
      @cooks = Cook.search_infos(search[:query])
    else
      @cooks = Cook.all
    end
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

  def edit
    @cook = Cook.find(params[:id])
  end

  def update
    @cook = Cook.find(params[:id])
    if @cook.update(cook_params)
      redirect_to @cook, notice: 'cook was successfully updated.'
    else
      render :edit
    end
  end

  private

  def cook_params
    params.require(:cook).permit(:name, :user_id, :location, :service, :price, photos: [])
  end
end

