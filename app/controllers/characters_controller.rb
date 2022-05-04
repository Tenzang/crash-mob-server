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
      characters = Character.where(id: params[:id]).select(:name, :role, :level, :race, :hitpoints)
      format.json { render json: characters.map{ |e| {name: e.name, role: e.role, level: e.level, race: e.race, hitpoints: e.hitpoints} }[0] }
    end 
  end

  def library
    user=@current_user.id
    # change this bit
  end

  def new
    
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


    # Calculates Max Hit Points-------
    modifier = ((constitution - 10) / 2).floor
    level = params['level']
    hitDice = params['hit_dice']
    hitpoints = hitDice + modifier + ((hitDice / 2 + 1) + modifier * (level.to_i - 1))
    #---------------------------------

    character.hitpoints = hitpoints

    @current_user.characters << character

    character.save
  end

  def destroy
    character = Character.find params[:id]
    character.destroy
  end

  private
  def character_params
    params.require(:character).permit(:name, :role, :level, :race)
  end

  def score_params
    params.require(:score).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
