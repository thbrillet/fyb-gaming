class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :user_games
  has_many :games, through: :user_games
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :participations
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
