class Query < ActiveRecord::Base
  validates :latitude, presence: true
  validates :longitude, presence: true

  has_and_belongs_to_many :photos
end
