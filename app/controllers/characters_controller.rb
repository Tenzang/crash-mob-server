class CharactersController < ApplicationController
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

  def delete
  end

  private
  def character_params
    params.require(:character).permit(:name, :class, :level, :race, :hitpoints)
  end

  def score_params
    params.require(:score).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
