class AddDefaultValueToMemberships < ActiveRecord::Migration[5.2]
  def change
    change_column_default :memberships, :status, 'pending'
  end
end
