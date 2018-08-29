class FetchGameInfosService
  def initialize(game = nil)
    @game = game
    @game_hex_id = @game.api_id.to_s(16)
    @base_url = "https://xboxapi.com"
    @endpoint = "/v2/game-details-hex/#{@game_hex_id}"# d174c79x
    # @endpoint = "/v2/game-details-hex/d174c79"
  end

  def call
    retrieve_photo
    save_photo
  end

  private

  def retrieve_photo
    request = URI.parse("#{@base_url}/#{@endpoint}")
    response = open(request, "X-AUTH" => "#{ENV['XBOX_LIVE_API_KEY']}").read
    json = JSON.parse(response)
    @game_photo_url = json['Items'][0]['Images'][0]['Url']
  end

  def save_photo
    @game.photo = @game_photo_url
    @game.save
  end
end
