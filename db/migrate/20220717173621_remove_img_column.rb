class RemoveImgColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :img
  end
end
