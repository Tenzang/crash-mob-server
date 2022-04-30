class ScoresController < ApplicationController
    def show
        respond_to do |format| 
            score = Score.where(character_id: params[:id]).select(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
            format.json { render json: score.map{ |e| { strength: e.strength, dexterity: e.dexterity, constitution: e.constitution, intelligence: e.intelligence, wisdom: e.wisdom, charisma: e.charisma } }[0]}
        end 
    end
end