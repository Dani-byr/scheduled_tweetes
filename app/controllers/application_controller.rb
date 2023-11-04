class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            #Con "find_by" evitamos que se rompa la aplicacion en caso de no encontrar el user
            Current.user = User.find_by(id: session[:user_id])
        end
    end
end
