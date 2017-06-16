class AddAvatarsToArticle < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :avatars, :string
  end
end
