class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.text :text
      t.belongs_to :replier, index: true, foreign_key: true
      t.belongs_to :comments, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
