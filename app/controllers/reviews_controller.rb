class ReviewsController < ApplicationController

 before_action :set_restaurant, only: [:new,:update, :show, :create, :edit]
 before_action :set_review, only: [:update, :destroy, :edit, :show]




 def index
 end

 def new
  @review = Review.new
end

def create
  @review = Review.new(review_params)
  @review.restaurant = @restaurant
  @review.user = current_user
  @review.save
end

def update
  @review = Review.find(@restaurant_params[:id])
end

def destroy
end

private

def set_review
  @review = restaurant.reviews.find(params[:id])
end

def set_restaurant
  @restaurant = Restaurant.find(params[:restaurant_id])
end


def review_params
  params.require (:review).permit(:name, :position, :tips, :location)
end


end
