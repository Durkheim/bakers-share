class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :amount
      t.belongs_to :ingredient

      t.timestamps null: false
    end
  end
end
