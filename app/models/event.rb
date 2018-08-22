class Event < ApplicationRecord
  belongs_to :group
  has_many :participations

  validates :title, presence: true

  mount_uploader :photo, PhotoUploader
end
