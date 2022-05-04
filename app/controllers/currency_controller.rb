class CurrencyController < ApplicationController
    def show
        respond_to do |format| 
            character = Character.find(params[:id])
            currency = character.currency
            format.json { render json: { cp: currency.cp, sp: currency.sp, gp: currency.gp, ep: currency.ep, pp: currency.pp } }
        end
    end
end