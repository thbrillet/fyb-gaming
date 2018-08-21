class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.integer :leader_id
      t.references :game, foreign_key: true
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
    add_foreign_key :groups, :users, column: :leader_id
    add_index :groups, :leader_id
  end
end
