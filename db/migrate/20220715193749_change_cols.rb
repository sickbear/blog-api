class ChangeCols < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :name, :string
  end
end
