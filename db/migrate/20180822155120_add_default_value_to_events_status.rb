class AddDefaultValueToEventsStatus < ActiveRecord::Migration[5.2]
  def change
    change_column_default :events, :status, 'pending'
  end
end
