class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :title
      t.text :text
      t.text :img

      t.timestamps
    end
  end
end
