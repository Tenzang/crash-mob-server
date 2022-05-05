class AddDetailsToCharacters < ActiveRecord::Migration[5.2]
  def change
    add_column :characters, :hit_dice, :integer
    add_column :characters, :dSaveSucc, :integer
    add_column :characters, :dSaveFail, :integer
    add_column :characters, :speed, :text
    add_column :characters, :languages, :text
    add_column :characters, :inspiration, :boolean
    add_column :characters, :xp, :integer
    add_column :characters, :equipment, :text
    add_column :characters, :tempHP, :integer
    add_column :characters, :currency_id, :integer
    add_column :characters, :ideals, :text
    add_column :characters, :bonds, :text
    add_column :characters, :flaws, :text
  end
end
