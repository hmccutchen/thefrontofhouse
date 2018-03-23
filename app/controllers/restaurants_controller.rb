class RestaurantsController < ApplicationController






  def index
@restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save

  end

  def new
    @restaurant = Restaurant.new
  end

  def update
  end


  def destroy
  end

  def edit
  end

private

def restaurant_params
  params.require(:restaurant).permit(:name, :location, :review, :category, :picture)
  end





end
