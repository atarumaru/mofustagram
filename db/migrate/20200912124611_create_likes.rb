class CreateLikes < ActiveRecord::Migration[5.2]
  def change
    create_table :likes do |t|
      t.timestamps
      t.references :user
      t.references :post
    end
  end
end
