class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :user, presence: true, uniqueness: { scope: :event }
end
