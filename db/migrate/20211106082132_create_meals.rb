class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.string :eat_meal
      t.references :user,    null: false, foreign_keys: true
      t.timestamps
    end
  end
end
