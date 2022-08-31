class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user = current_user
    if @artwork.save
      redirect_to artwork_path(@artwork)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @artwork = Artwork.find(params[:id])
    @booking = Booking.new
  end

  private

  def artwork_params
    params.require(:artwork).permit(:title, :description, :price, photos: [])
  end
end
