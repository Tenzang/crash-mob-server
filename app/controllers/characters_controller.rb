class CharactersController < ApplicationController
  def index
    respond_to do |format| 
      format.json { render json: Character.all.select(:id, :name, :role, :level, :race) }
    end 
  end

  def show
    respond_to do |format| 
      characters = Character.where(id: params[:id]).select(:name, :role, :level, :race, :hitpoints)
      format.json { render json: characters.map{ |e| {name: e.name, role: e.role, level: e.level, race: e.race, hitpoints: e.hitpoints} }[0] }
    end 
  end

  def new
  end

  def create
    # maxHealth = hitDice + modifier + ((hitDice / 2 + 1) + modifier * (level - 1)); 
    p params
    puts "constitution score" + params['abilities']['constitution'].to_s
    character = Character.new(character_params)
    character.save
  end

  def delete
  end

  private
  def character_params
    params.require(:character).permit(:name, :role, :level, :race)
  end

  def score_params
    params.require(:score).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
