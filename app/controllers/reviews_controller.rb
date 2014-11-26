class ReviewsController < ApplicationController
  before_action :set_restaurant
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(params[:review])
  end

  def create
    set_restaurant
    @review = Review.new(review_params)
    @review.save
    redirect_to :root
  end


  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

end
