class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :registration_date
  end
end
