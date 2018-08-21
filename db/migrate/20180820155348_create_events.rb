class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.references :group, foreign_key: true
      t.string :status
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
