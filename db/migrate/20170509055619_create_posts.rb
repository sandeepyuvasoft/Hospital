class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :comments
      t.string :description
      t.integer :parent_id

      t.timestamps
    end
  end
end
