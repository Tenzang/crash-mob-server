class CreateCharacterSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :character_skills do |t|
      t.integer :character
      t.integer :skill_id

      t.timestamps
    end
  end
end
