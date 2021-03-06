class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @defaults = Restaurant.default_choices
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :creator_id)
  end
end
