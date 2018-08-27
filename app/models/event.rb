class Event < ApplicationRecord
  belongs_to :group
  has_many :participations
  has_many :objectives, dependent: :destroy

  validates :title, presence: true

  mount_uploader :photo, PhotoUploader
end
