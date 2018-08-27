class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :name
      t.references :event, foreign_key: true
    end
  end
end
