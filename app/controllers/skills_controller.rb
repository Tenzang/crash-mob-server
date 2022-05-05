class SkillsController < ApplicationController
  def show
    respond_to do |format| 
        character = Character.find(params[:id])
        skills = character.skills    
        format.json { render json: skills.map { |s| s.name } }
    end
  end
end
