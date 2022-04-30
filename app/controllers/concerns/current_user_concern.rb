module CurrentUserConcern
    extend ActiveSupport::Concern

    included do
        before_action :set_current_user
    end

    def set_current_user
        return @current_user if defined?(@current_user)
        @current_user = User.find_by(id: session[:id])
    end
end