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
          (CASE WHEN choice_one='#{user.choice_one}' THEN 1 ELSE 0 END) +
          (CASE WHEN choice_two='#{user.choice_two}' THEN 1 ELSE 0 END) +
          (CASE WHEN choice_three='#{user.choice_three}' THEN 1 ELSE 0 END)
        )
        / 3
      ) AS matching_percentage
    EOF

    User.select(select)
      .where.not(id: user.id)
      .order('matching_percentage DESC')
  end
end
