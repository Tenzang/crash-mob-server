Character.destroy_all
Score.destroy_all

char1 = Character.new :name => 'Fjord', :role => 'Warlock', :level => 5, :race => 'Half-Orc', :hitpoints => 28
score1 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
char1.save
char1.score = score1

puts "#{Character.count} characters created."
puts "#{Score.count} score lists successfully created."