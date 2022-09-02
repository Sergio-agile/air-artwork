class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.first(4)
  end

  def listings
    @artworks = Artwork.where(user_id: current_user.id)
  end

  def artwork
  end


  def contact_us
  end

  def about_us
  end

  def bookings
    @bookings = Booking.where(user_id: current_user.id).order(created_at: :desc)
  end

  def requests
    @requests = Booking.joins(:artwork).where('artwork.user_id' => current_user.id)
    @request = Booking.new
  end

end
