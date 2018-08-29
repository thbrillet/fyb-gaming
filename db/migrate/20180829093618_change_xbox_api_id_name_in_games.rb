class ChangeXboxApiIdNameInGames < ActiveRecord::Migration[5.2]
  def change
    rename_column :games, :xbox_api_id, :api_id
  end
end
