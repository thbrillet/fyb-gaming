class AddApiIdToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :xbox_api_id, :integer
  end
end
