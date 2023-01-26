class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :destroy]

  def index
    @flats = Flat.all
  end

  def new; end

  def create; end

  def show
  end

  def edit; end

  def update; end

  def destroy
    @flat.destroy
    redirect_to flats_path, status: :see_other
  end

  private

  def set_flat
    @flat = Flat.find(params[:id])
  end

  def flat_params; end
end
