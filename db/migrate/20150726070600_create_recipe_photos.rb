class CreateRecipePhotos < ActiveRecord::Migration
  def change
    create_table :recipe_photos do |t|
      t.string :filename

      t.timestamps null: false
    end
  end
end
