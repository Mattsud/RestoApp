class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new(params[:restaurant])
  end

  def create
    @restaurant = Restaurant.new(user_params)
    redirect_to :root
    @restaurant.save
  end


  private

  def user_params
    params.require(:restaurant).permit(:name, :address, :phone, :category)
  end

end
