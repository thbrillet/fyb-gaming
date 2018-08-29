class ImportXboxLiveProfileService
  def initialize(user, gamer_tag)
    @user   = user
    @client = XboxApi::Client.new("#{ENV['XBOX_LIVE_API_KEY']}")
    @gamer_tag = gamer_tag
  end

  def call
    fetch_gamer_xuid
    fetch_games
    save_games_for_user
  end

  private

  def fetch_gamer_xuid
    @gamer = @client.gamer(@gamer_tag)
    @xuid = @gamer.xuid
  end

  def fetch_games
    @games = @gamer.xboxonegames
  end

  def save_games_for_user
    SaveUserXboxGamesService.new(@user, @games).call
  end
end
