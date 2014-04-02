class QueriesController < ApplicationController

  include SearchHelper

  def create 
    @query = Query.new(post_params)
    @query.save
    @current_photos = get_photos(@query)
    @current_photos.each do |photo|
      photo.queries << @query
      photo.save
    end

    redirect_to query_path(@query)
  end

  def show
    @query = Query.find(params[:id])
    page_number = params[:page] ? params[:page].to_i : 1
    per_page_count = 5
    @current_page_photos = []
    @query.photos.each_with_index do |photo, i|
      @current_page_photos << photo if i / per_page_count == page_number - 1
    end
    @paginated_photos = @query.photos.paginate(:page => params[:page], :per_page => per_page_count)

  end


  private
    def post_params
      params.permit(:latitude, :longitude, :distance)
    end
end