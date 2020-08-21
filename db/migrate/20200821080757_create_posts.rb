class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :image,null:false
      t.references :user_id, forign_key:true
      t.integer :category_id,null:false,foreign_key:true
      t.timestamps
    end
  end
end
