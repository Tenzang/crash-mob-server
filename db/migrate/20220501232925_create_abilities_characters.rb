class CreateAbilitiesCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :abilities_characters do |t|
      t.integer :character_id
      t.integer :ability_id

    end
  end
end
