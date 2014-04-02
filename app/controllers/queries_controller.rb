class QueriesController < ApplicationController

  include SearchHelper

  def create
    # search_params = {
    #   :lat => params[:latitude],
    #   :long => params[:longitude],
    #   :dist => params[:distance] * 1000
    # }
  
    @query = Query.new(post_params)
    @query.save
    @photos = Photo.paginate(:page => params[:page], :per_page => 5)
    @current_photos = get_photos(@query)
    @current_photos.each do |photo|
      photo.queries << @query
      photo.save
    end

    render :search
  end

  def show 


  end


  private
    def post_params
      params.permit(:latitude, :longitude, :distance)
    end
end