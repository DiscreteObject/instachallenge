module SearchHelper
  def get_photos(search_params)
    query_string = 'https://api.instagram.com/v1/media/search?lat=' + search_params[:lat] + '&lng=' + search_params[:long] + '&distance=' + search_params[:dist] + '&client_id=' + ENV['INSTAGRAM_CLIENT_ID']

    photo_results_data = JSON(HTTParty.get(query_string).body)['data']
    puts "******** #{photo_results_data.length} photos retrieved"
    current_photos = []
    photo_results_data.each do |photo|
      new_photo = Photo.new
      new_photo.type = photo['type']
      new_photo.link = photo['link']
      new_photo.username = photo['user']['username']
      new_photo.low_url = photo['images']['low_resolution']['url']
      new_photo.thumb_url = photo['images']['thumbnail']['url']
      new_photo.std_url = photo['images']['standard_resolution']['url']
      new_photo.save
      current_photos << new_photo
    end
    return current_photos
  end
end