class ReviewsController < ApplicationController
  before_action :set_flat, only: [:create, :update, :destroy]

  def create
    @review = Review.new
    @review.flat = @flat
    if @review.save
      redirect_to flat_path(@flat)
    else
      redirect_to flat_path(@flat), staus: :unprocessable_entity
    end
  end

  def update; end

  def destroy; end

  private

  def set_flat
    @flat = Flat.find(params[:flat_id])
  end

  def review_params; end
end
