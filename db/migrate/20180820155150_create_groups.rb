class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.references :user, foreign_key: true
      t.references :game, foreign_key: true
      t.string :name
      t.text :description
      t.string :photo

      t.timestamps
    end
  end
end
