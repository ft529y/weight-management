class AddColumnToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :initial_weight, :string, null: false
    add_column :users, :height, :string, null: false
  end
end
