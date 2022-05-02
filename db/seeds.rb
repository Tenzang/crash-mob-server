User.destroy_all
#store user in local variable that we can associate them at the end
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :username => 'jesterjonesy' #make this person the admin from the start in seed data
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken',:username => 'crazycraigs'

puts "#{User.count} users"

Character.destroy_all
Score.destroy_all

Skill.destroy_all
Ability.destroy_all

acro = Skill.create :name => 'Acrobatics'
anim = Skill.create :name => 'Animal Handling'
arca = Skill.create :name => 'Arcana' 
athl = Skill.create :name => 'Athletics'
dece = Skill.create :name => 'Deception'
hist = Skill.create :name => 'History'
insi = Skill.create :name => 'Insight' 
inti = Skill.create :name => 'Intimidation'
inve = Skill.create :name => 'Investigation'
medi = Skill.create :name => 'Medicine'
natu = Skill.create :name => 'Nature' 
perc = Skill.create :name => 'Perception'
perf = Skill.create :name => 'Performance'
pers = Skill.create :name => 'Persuasion'
reli = Skill.create :name => 'Religion' 
slei = Skill.create :name => 'Sleight of Hand'
stea = Skill.create :name => 'Stealth' 
surv = Skill.create :name => 'Survival'

str = Ability.create :name => 'Strength'
dex = Ability.create :name => 'Dexterity'
con = Ability.create :name => 'Constitution'
int = Ability.create :name => 'Intelligence'
wis = Ability.create :name => 'Wisdom'
cha = Ability.create :name => 'Charisma'

puts "#{Skill.count} skills created"
puts "#{Ability.count} Abilities created"


char1 = Character.new :name => 'Fjord', :role => 'Warlock', :level => 5, :race => 'Half-Orc', :hitpoints => 28
char2 = Character.new :name => 'Shogun', :role => 'Cleric', :level => 3, :race => 'Dwarf', :hitpoints => 20
char3 = Character.new :name => 'Varrok', :role => 'Wizard', :level => 4, :race => 'Rock Gnome', :hitpoints => 25
char4 = Character.new :name => 'Bob', :role => 'Paladin', :level => 6, :race => 'Dragonborn', :hitpoints => 32

score1 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score2 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score3 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score4 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18

char1.skills << athl << dece << inti << inve << perc 
char1.abilities << wis << cha 
char1.save
char2.save
char3.save
char4.save

char1.score = score1
char2.score = score2
char3.score = score3
char4.score = score4

u1.characters << char1 << char2
u2.characters << char3 << char4

puts "#{Character.count} characters created."
puts "#{Score.count} score lists successfully created."
