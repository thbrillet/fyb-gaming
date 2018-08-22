class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :user_games
  has_many :games, through: :user_games
  has_many :memberships
  has_many :groups, through: :memberships
  has_many :participations

  mount_uploader :photo, PhotoUploader

  scope :matching_with, -> (user) do
    User.select("users.*, #{user.matching_percentage_calc} AS matching_percentage")
      .where.not(id: user.id)
      .where("#{user.matching_percentage_calc} > 20")
      .order('matching_percentage DESC')
  end

  def platforms
    self.games.pluck(:platform).uniq
  end

  def matching_percentage_calc
    <<~PLOP
      (
        100 * (
          (CASE WHEN users.interest_pve_pvp='#{interest_pve_pvp}' THEN 1 ELSE 0 END) +
          (CASE WHEN users.interest_action_strat='#{interest_action_strat}' THEN 1 ELSE 0 END) +
          (CASE WHEN users.interest_gameplay_story='#{interest_gameplay_story}' THEN 1 ELSE 0 END) +
          (CASE WHEN users.interest_compet_chill='#{interest_compet_chill}' THEN 1 ELSE 0 END) +
          (CASE WHEN users.interest_mmo_smallteam='#{interest_mmo_smallteam}' THEN 1 ELSE 0 END)
        )
        / 5
      )
    PLOP
  end
end
