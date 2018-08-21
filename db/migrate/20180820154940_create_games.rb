class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.string :year
      t.string :genre

      t.timestamps
    end
  end
end
