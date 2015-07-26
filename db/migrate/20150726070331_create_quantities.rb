class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.integer :amount

      t.timestamps null: false
    end
  end
end
