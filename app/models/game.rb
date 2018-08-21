class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games
  has_many :groups

  mount_uploader :photo, PhotoUploader
end
