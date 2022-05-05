User.destroy_all
#store user in local variable that we can associate them at the end
u1 = User.create :email => 'jonesy@ga.co', :password => 'chicken', :username => 'jesterjonesy' #make this person the admin from the start in seed data
u2 = User.create :email => 'craigsy@ga.co', :password => 'chicken',:username => 'crazycraigs'

puts "#{User.count} users"

Character.destroy_all
Score.destroy_all

Skill.destroy_all
Ability.destroy_all

acro = Skill.create :name => 'acrobatics'
anim = Skill.create :name => 'animal handling'
arca = Skill.create :name => 'arcana' 
athl = Skill.create :name => 'athletics'
dece = Skill.create :name => 'deception'
hist = Skill.create :name => 'history'
insi = Skill.create :name => 'insight' 
inti = Skill.create :name => 'intimidation'
inve = Skill.create :name => 'investigation'
medi = Skill.create :name => 'medicine'
natu = Skill.create :name => 'nature' 
perc = Skill.create :name => 'perception'
perf = Skill.create :name => 'performance'
pers = Skill.create :name => 'persuasion'
reli = Skill.create :name => 'religion' 
slei = Skill.create :name => 'sleight of hand'
stea = Skill.create :name => 'stealth' 
surv = Skill.create :name => 'survival'

str = Ability.create :name => 'strength'
dex = Ability.create :name => 'dexterity'
con = Ability.create :name => 'constitution'
int = Ability.create :name => 'intelligence'
wis = Ability.create :name => 'wisdom'
cha = Ability.create :name => 'charisma'

puts "#{Skill.count} skills created"
puts "#{Ability.count} Abilities created"


char1 = Character.new :name => 'Fjord', :role => 'Warlock', :level => 5, :race => 'Half-Orc', :hitpoints => 28, :image => "https://sagegamers.com/ezoimgfmt/149658804.v2.pressablecdn.com/wp-content/uploads/2021/08/cc70ee9d988961fa49076d7dc187883b_original.jpg?ezimgfmt=ng%3Awebp%2Fngcb1%2Frs%3Adevice%2Frscb1-2", :languages =>'Common, Abyssal', :hit_dice => "1", :dSaveSucc => "2", :dSaveFail=>"1", :speed => "30", :inspiration => false, :xp=>'4000', :equipment=>"Dagger, Tattered Clothes", :tempHP => '0', :ideals=>'Retribution, Aspiration', :bonds=>"A powerful person killed someone I love. Someday soon, I'll have my revenge.", :flaws =>"If there's a plan, I'll forget it. If I don't forget it, I'll ignore it."
char2 = Character.new :name => 'Shogun', :role => 'Cleric', :level => 3, :race => 'Dwarf', :hitpoints => 20, :image => "https://www.dndbeyond.com/avatars/thumbnails/6/371/420/618/636272706155064423.png", :languages=>"Common, Dwarven", :hit_dice => "1", :dSaveSucc => "2", :dSaveFail=>"1", :speed => "30", :inspiration => true, :xp=>'4000', :equipment => "Mace, Scale Mail", :tempHP => '0', :ideals=>"Respect, Honor", :bonds=>"I created a great work for someone, and then found them unworthy to receive it. I'm still looking for someone worthy.", :flaws =>"Once I pick a goal, I become obsessed with it to the detriment of everything else in my
life. "
char3 = Character.new :name => 'Varrok', :role => 'Wizard', :level => 4, :race => 'Rock Gnome', :hitpoints => 25, :image => 'https://i.pinimg.com/736x/55/19/cc/5519ccdac231befd3d8d156959e0a36b--character-portraits-character-ideas.jpg', :languages=>"Common, Gnomish", :hit_dice => "1", :dSaveSucc => "2", :dSaveFail=>"1", :speed => "30", :inspiration => false, :xp=>'4000',:equipment => "Quarterstaff, Spellbook", :tempHP => '0', :ideals=>"Friendship, Creativity", :bonds=>"Should my discovery come to light, it could bring ruin to the world.", :flaws=>"I once satirized a noble who still wants my head. It was a mistake that I will likely repeat."
char4 = Character.new :name => 'Bob', :role => 'Paladin', :level => 6, :race => 'Dragonborn', :hitpoints => 32, :image => 'https://cdna.artstation.com/p/assets/images/images/027/345/992/large/andrey-elkin-.jpg?1591272145', :languages=>"Common, Draconian", :hit_dice => "1", :dSaveSucc => "2", :dSaveFail=>"1", :speed => "30", :inspiration => true, :xp=>'4000', :equipment=> "Chain Mail, Shield, Longsword", :tempHP => '0', :ideals=>"Faith, Power", :bonds=>"I suffer awful visions of a coming disaster and will do anything to prevent it.", :flaws=>"Secretly, I believe that things would be better if I were a tyrant lording over the land."

score1 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score2 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score3 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18
score4 = Score.create :strength => 11, :dexterity => 11, :constitution => 18, :intelligence => 14, :wisdom => 7, :charisma => 18

char1.skills << athl << dece << inti << inve << perc 
char1.abilities << str << int
char2.abilities << str << int
char3.abilities << str << int
char4.abilities << str << int

# Currency
Currency.destroy_all
char1.currency = Currency.create
char2.currency = Currency.create
char3.currency = Currency.create
char4.currency = Currency.create
puts "#{Currency.count} wallets created."

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
puts "#{Score.count} score lists created."
