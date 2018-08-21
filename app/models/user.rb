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

  scope :matchu_pitchu, -> (user) do
    select = <<~EOF
      users.*,
      (
        100 * (
          (CASE WHEN interest_pve_pvp='#{user.interest_pve_pvp}' THEN 1 ELSE 0 END) +
          (CASE WHEN interest_action_strat='#{user.interest_action_strat}' THEN 1 ELSE 0 END) +
          (CASE WHEN interest_gameplay_story='#{user.interest_gameplay_story}' THEN 1 ELSE 0 END) +
          (CASE WHEN interest_compet_chill='#{user.interest_compet_chill}' THEN 1 ELSE 0 END) +
          (CASE WHEN interest_mmo_smallteam='#{user.interest_mmo_smallteam}' THEN 1 ELSE 0 END)
        )
        / 5
      ) AS matching_percentage
    EOF

    User.select(select)
      .where.not(id: user.id)
      .order('matching_percentage DESC')
  end
end
