module CurrentUserConcern
    extend ActiveSupport::Concern

    included do
        p 'current user being set'
        before_action :set_current_user
    end

    def set_current_user
        p '/////////////////////////////////////'
        return @current_user if defined?(@current_user)
        p session[:id]
        @current_user = User.find_by(id: session[:user_id])
        p @current_user
    end
end