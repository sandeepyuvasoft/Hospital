class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.integer :laptop_id
      t.string :picture

      t.timestamps
    end
  end
end
