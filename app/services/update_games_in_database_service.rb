class UpdateGamesInDatabaseService
  def initialize(new_games, games_without_api_id)
    @new_games            = new_games
    @games_without_api_id = games_without_api_id
  end

  def call
    update_api_id
    create_new_games_from_api
  end

  private

  def update_api_id
    @games_without_api_id.each do |game|
      Game.find_by(name: game[:name], platform: game[:platform])
          .update(api_id: game[:api_id])
    end
  end

  def create_new_games_from_api
    @new_games.each do |game|
      new_game = Game.create(game)
      # FetchGameInfosService.new(new_game).call
    end
  end
end
