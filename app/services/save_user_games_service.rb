class SaveUserGamesService
  def initialize(user, games)
    @user = user
    @games = games
  end

  def call
  end

  private

  def create_games_hash
    @games = @games[:title].map do |game|
      if game[:titleType] == 'DGame'
        { id: game[:titleId], name: game[:name]}
      end
    end
    binding.pry
  end
end
