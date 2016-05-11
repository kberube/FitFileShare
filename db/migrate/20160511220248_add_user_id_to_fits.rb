class AddUserIdToFits < ActiveRecord::Migration
  def change
    add_column :fits, :user_id, :integer
    add_index :fits, :user_id
  end
end
