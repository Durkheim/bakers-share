class CreateIngredientMeasurements < ActiveRecord::Migration
  def change
    create_table :ingredient_measurements do |t|
      t.belongs_to :recipe, index: true, foreign_key: true
      t.belongs_to :measurement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
