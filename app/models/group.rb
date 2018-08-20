class Group < ApplicationRecord
  belongs_to :leader, class_name: "User"
  belongs_to :game
  has_many :memberships
  has_many :users, through: :memberships
  has_many :events
end
