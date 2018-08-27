class AddStatusToObjective < ActiveRecord::Migration[5.2]
  def change
    add_column :objectives, :status, :string
  end
end
