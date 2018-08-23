class Group < ApplicationRecord
  belongs_to :leader, class_name: "User"
  belongs_to :game
  has_many :memberships
  has_many :users, through: :memberships
  has_many :events, dependent: :destroy

  scope :matching_with, -> (user) do
    Group.select("groups.*, #{user.matching_percentage_calc} AS matching_percentage")
      .joins(:leader)
      .where.not(id: user.group_ids)
      .where("#{user.matching_percentage_calc} > 20")
      .order('matching_percentage DESC')
  end
end
