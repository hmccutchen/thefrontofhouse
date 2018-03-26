class ReviewsController < ApplicationController

  before_action :set_review, only: [:update, :destroy, :edit, :show]




  def index
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
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


  def review_params
    params.require (:review).permit(:name, :position, :tips, :location)
  end


end
