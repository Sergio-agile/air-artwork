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
end
