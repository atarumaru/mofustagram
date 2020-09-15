class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :name
      t.timestamps
      t.integer :user_id
      t.integer :likes_count
    end
  end
end
