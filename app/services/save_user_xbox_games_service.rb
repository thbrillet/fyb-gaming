class SaveUserXboxGamesService
  def initialize(user, games)
    @user = user
    @games = games
  end

  def call
    select_ids_and_names
    compare_with_existing_data
    set_games_in_database
    add_games_to_user
  end

  private

  def select_ids_and_names
    @api_games = @games[:titles].each_with_object([]) do |game, a|
      if game[:titleType] == 'DGame'
        a << { api_id: game[:titleId], name: game[:name], platform: 'XboxOne' }
      end
    end
  end

  def compare_with_existing_data
    @existing_games = Game.where(platform: 'XboxOne').pluck(:name)
    @games_without_api_id = []
    @new_games = @api_games.each_with_object([]) do |game, a|
      if @existing_games.include?(game[:name])
        if Game.find_by_name(game[:name]).api_id != game[:api_id]
          @games_without_api_id << game
        end
      else
        a << game
      end
    end
  end

  def set_games_in_database
    UpdateGamesInDatabaseService.new(@new_games, @games_without_api_id).call
  end

  def add_games_to_user
    @api_games.each do |game|
      UserGame.create(user: @user, game: Game.find_by(name: game[:name], platform: game[:platform]))
    end
  end
end
