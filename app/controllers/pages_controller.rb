class PagesController < ApplicationController

  include SearchHelper

  def main

  end

  def search
    search_params = {
      :lat => params[:search_lat],
      :long => params[:search_long],
      :dist => params[:search_distance] * 1000
    }

    @current_photos = get_photos(search_params)

  end
end