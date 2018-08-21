class RenameColumnForUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :interest1, :interest_pve_pvp
    rename_column :users, :interest2, :interest_action_strat
    rename_column :users, :interest3, :interest_gameplay_story
    rename_column :users, :interest4, :interest_compet_chill
    rename_column :users, :interest5, :interest_mmo_smallteam
  end
end
