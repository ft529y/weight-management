class RemoveHeightFromWeights < ActiveRecord::Migration[6.0]
  def change
    remove_column :weights, :height, :string
  end
end
