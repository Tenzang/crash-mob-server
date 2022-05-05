class CharactersController < ApplicationController
  include CurrentUserConcern

  def index
    characters = @current_user.characters
    respond_to do |format| 
      format.json { render json: characters.select(:id, :name, :role, :level, :race, :image) }
    end 
  end

  def show
    respond_to do |format| 
      characters = Character.where(id: params[:id]).select(:name, :role, :level, :race, :hitpoints, :image, :languages, :hit_dice, :dSaveSucc, :dSaveFail, :speed, :languages, :inspiration, :xp, :equipment, :tempHP, :ideals, :bonds, :flaws )
      format.json { render json: characters.map{ |e| {name: e.name, role: e.role, level: e.level, race: e.race, hitpoints: e.hitpoints, image: e.image, :languages: e.languages, :hit_dice: e.hit_dice} }[0] }
    end 
  end

  def create
    p params
    character = Character.new(character_params)

    # Scores
    score = Score.new

    strength = params['abilities'][0]
    score.strength = strength

    dexterity = params['abilities'][1]
    score.dexterity = dexterity

    constitution = params['abilities'][2]
    score.constitution = constitution

    intelligence = params['abilities'][3]
    score.intelligence = intelligence

    wisdom = params['abilities'][4]
    score.wisdom = wisdom

    charisma = params['abilities'][5]    
    score.charisma = charisma

    score.save
    character.score = score
    
    # Proficiencies
    # TODO !!!

    # Calculates Max Hit Points-------
    modifier = ((constitution - 10) / 2).floor
    level = params['level']
    hitDice = params['hit_dice']
    hitpoints = hitDice + modifier + ((hitDice / 2 + 1) + modifier * (level.to_i - 1))

    character.hitpoints = hitpoints
    #---------------------------------

    # Assign Default Values
    character.dSaveSucc = 0
    character.dSaveFail = 0
    character.speed = 30
    character.inspiration = false
    character.xp = 0
    character.tempHP = 0
    
    # Give character an empty wallet
    character.currency = Currency.create

    # Unpack languages
    languages = params['languages'].join(', ')
    character.languages = languages

    character.save

    # Assign character to user
    @current_user.characters << character
  end

  def destroy
    character = Character.find params[:id]
    character.destroy
  end

  private
  def character_params
    params.require(:character).permit(:name, :role, :level, :race, :image, :hit_dice, :equipment)
  end

  def score_params
    params.require(:score).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
