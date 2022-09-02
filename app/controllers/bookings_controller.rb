class BookingsController < ApplicationController
  def create
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.new(booking_params)
    @booking.artwork = @artwork
    @booking.user = current_user
    if @booking.save
      # redirect_to artwork_path(@artwork) # redirect to show page
      redirect_to bookings_path
    else
      render 'artworks/show', status: :unprocessable_entity
    end
  end

  def update
    @artwork = Artwork.find(params[:artwork_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    if @booking.save
      redirect_to requests_path # redirect to show page
    else
      render 'pages/requests', status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :status)
  end
end
