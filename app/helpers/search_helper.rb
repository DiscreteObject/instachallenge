module SearchHelper
  def get_photos(query)
    query_string = 'https://api.instagram.com/v1/media/search?lat=' + query.latitude + '&lng=' + query.longitude + '&distance=' + (query.distance * 1000) + '&client_id=' + ENV['INSTAGRAM_CLIENT_ID']

    photo_results_data = JSON(HTTParty.get(query_string).body)['data']
    current_photos = []
    photo_results_data.each do |photo|
      new_photo = Photo.new
      new_photo.post_type = photo['type']
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