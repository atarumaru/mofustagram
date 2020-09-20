class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.timestamps
      t.integer :user_id
      t.integer :post_id
    end
  end
end
