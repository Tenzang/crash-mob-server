class StaticController < ApplicationController
    def home
        render json: { status: "It's working", sourceURL: ENV['sourceURL'] }
    end
end