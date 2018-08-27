class ChangeColumnContentTypeInMessage < ActiveRecord::Migration[5.2]
  def up
    change_table :messages do |t|
      t.change :content, :text
    end
  end

  def down
    change_table :messages do |t|
      t.change :content, :string
    end
  end
end
