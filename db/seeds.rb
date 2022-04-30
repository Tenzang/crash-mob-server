User.destroy_all
#store user in local variable that we can associate them at the end
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :username => 'jesterjonesy' #make this person the admin from the start in seed data
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken',:username => 'crazycraigs'

puts "#{User.count} users"

Character.destroy_all
Score.destroy_all

char1 = Character.new :name => 'Fjord', :role => 'Warlock', :level => 5, :race => 'Half-Orc', :hitpoints => 28
score1 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
char1.save
char1.score = score1
puts "#{Character.count} characters created."
puts "#{Score.count} score lists successfully created."