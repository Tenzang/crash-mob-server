class AbilitiesController < ApplicationController
    def show
        respond_to do |format| 
            character = Character.find(params[:id])
            abilities = character.abilities    
            format.json { render json: abilities.map { |a| a.name } }
        end
   end 
    

    def create
    end

  end
  