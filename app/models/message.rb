class Message < ApplicationRecord
  belongs_to :group
  belongs_to :user

  validates :content, presence: true
  validates :group, presence: true
  validates :user, presence: true
end
