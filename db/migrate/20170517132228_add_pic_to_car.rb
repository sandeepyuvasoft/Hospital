class AddPicToCar < ActiveRecord::Migration[5.0]
  def change
    add_column :cars, :pic, :string
  end
end
