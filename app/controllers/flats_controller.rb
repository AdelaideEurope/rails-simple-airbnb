class FlatsController < ApplicationController
  before_action :set_flat, only: [:show, :edit, :update]

  def index
    @flats = Flat.all
  end

  def show
  end

  def edit
  end

  # def new
  #   @flat = Flat.new
  # end

  # def create
  #   @flat = Flat.new(flats_params)
  #   if @flat.save
  #     redirect_to flat_path(@flat)
  #   else
  #     render :new
  #   end
  # end

private

  def flats_params
    params.require(:flat).permit(:name, :address, :description, :price_per_night, :number_of_guests, :img_url)
  end

  def set_flat
    @flat = Flat.find(params[:id])
  end
end
