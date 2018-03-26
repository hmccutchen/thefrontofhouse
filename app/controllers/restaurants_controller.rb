class RestaurantsController < ApplicationController

  # before_action :set_restuarant, :only [:update, :destroy, :edit, :show]




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

  def show
  end

  private

  def set_restuarant
    @restaurant = Restaurant.find(restaurant_params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :review, :category, :picture)
  end





end
