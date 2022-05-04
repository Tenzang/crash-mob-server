class CharactersController < ApplicationController
  include CurrentUserConcern

  def index
    characters = @current_user.characters
    respond_to do |format| 
      format.json { render json: characters.select(:id, :name, :role, :level, :race) }
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
    # make new character with user input
    character = Character.new character_params
    # make new ability with user input
    score = Score.create score_params
    # associate score with character
    character.score = score
    character.save

    redirect_to users_new_path
  end

  def destroy
    character = Character.find params[:id]
    character.destroy
  end

  private
  def character_params
    params.require(:character).permit(:name, :class, :level, :race, :hitpoints)
  end

  def score_params
    params.require(:score).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
