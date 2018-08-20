class AddInfosToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string
    add_column :users, :photo, :string
    add_column :users, :biography, :text
    add_column :users, :punch_line, :string
    add_column :users, :language, :string
    add_column :users, :birthdate, :date
    add_column :users, :interest1, :string
    add_column :users, :interest2, :string
    add_column :users, :interest3, :string
    add_column :users, :interest4, :string
    add_column :users, :interest5, :string
  end
end
