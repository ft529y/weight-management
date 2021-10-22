class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.string :weight,           null: false
      t.string :height
      t.references :user,         null: false, foreign_keys: true
      t.timestamps
    end
  end
end
