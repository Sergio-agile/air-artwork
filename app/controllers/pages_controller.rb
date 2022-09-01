class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.last(10)
  end

  def listings
    @artworks = Artwork.where(user_id: current_user.id)
  end

  def artwork
  end
end
