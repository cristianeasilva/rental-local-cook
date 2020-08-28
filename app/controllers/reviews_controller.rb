class ReviewsController < ApplicationController
  def new
    @order = Order.find(params[:order_id])
    @review = Review.new
  end

  def create
    @order = Order.find(params[:order_id])
    @review = Review.create(review_params)
    @review.order = @order

    if @review.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @order = @review.order
    redirect_to user_url(current_user)
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
