class CreateCharactersSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :characters_skills do |t|
      t.integer :character_id
      t.integer :skill_id

    end
  end
end
