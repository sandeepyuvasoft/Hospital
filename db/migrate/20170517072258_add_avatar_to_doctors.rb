class AddAvatarToDoctors < ActiveRecord::Migration[5.0]
  def change
    add_column :doctors, :avatar, :string
  end
end
