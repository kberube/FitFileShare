class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :fit_id
      t.text :body
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :comments, :fit_id
  end
end
