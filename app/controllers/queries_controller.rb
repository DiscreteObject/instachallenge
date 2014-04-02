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
    @page_number = params[:page]
    @photos = @query.photos
    @paginated_photos = @photos.paginate(:page => params[:page], :per_page => 5)

  end


  private
    def post_params
      params.permit(:latitude, :longitude, :distance)
    end
end