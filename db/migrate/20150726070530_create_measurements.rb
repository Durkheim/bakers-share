class CreateMeasurements < ActiveRecord::Migration
  def change
    create_table :measurements do |t|
      t.string :unit_of_measure

      t.timestamps null: false
    end
  end
end
