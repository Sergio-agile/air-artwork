class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.last(10)
  end

  def listings
  end

  def artwork
  end

end
