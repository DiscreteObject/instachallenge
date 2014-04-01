class Photo < ActiveRecord::Base
  validates :type, presence: true, inclusion: { in: %w(image video) }
  validates :link, presence: true
  validates :username, presence: true
end