class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.integer :user_id
      t.text :name
      t.text :class
      t.integer :level
      t.text :race
      t.integer :hitpoints

      t.timestamps
    end
  end
end
