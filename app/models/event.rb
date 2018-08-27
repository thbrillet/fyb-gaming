class Event < ApplicationRecord
  belongs_to :group
  has_many :objectives, dependent: :destroy
  has_many :participations, dependent: :destroy

  validates :title, presence: true

  mount_uploader :photo, PhotoUploader
end
