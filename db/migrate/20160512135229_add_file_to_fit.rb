class AddFileToFit < ActiveRecord::Migration
  def change
    add_column :fits, :file, :string
  end
end
