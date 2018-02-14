class  ReviewsController < ApplicationController

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    # Instancier une review
    @review = Review.new(review_params)
    # Find restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    # associate review and restaurant
    @review.restaurant = @restaurant
    redirect_to restaurant_path
  end

  def review_params
    params.require(:review).permit(:content)
  end

end
