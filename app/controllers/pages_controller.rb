class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @artworks = Artwork.first(4)
  end

  def listings
  end

  def artwork
  end
end
