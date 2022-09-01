class BookingsController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    @booking.user = @user
    if @booking.save
      redirect_to list_path(@artwork)
    else
      render 'artworks/show', @artwork, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:bookmark).permit(:start_date, :end_date, :status)
  end
end
