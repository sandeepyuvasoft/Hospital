class CreateLaptops < ActiveRecord::Migration[5.0]
  def change
    create_table :laptops do |t|
      t.string :name

      t.timestamps
    end
  end
end
