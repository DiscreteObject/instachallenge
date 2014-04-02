class Photo < ActiveRecord::Base
  validates :post_type, presence: true, inclusion: { in: %w(image video) }
  validates :link, presence: true
  validates :username, presence: true

  has_and_belongs_to_many :queries
end