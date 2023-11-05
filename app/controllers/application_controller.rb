class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
        if session[:user_id]
            #Con "find_by" evitamos que se rompa la aplicacion en caso de no encontrar el user
            Current.user = User.find_by(id: session[:user_id])
        end
    end

    def require_user_logged_in!
        redirect_to sign_in_path, alert: "You must be signed in before that." if Current.user.nil?
    end
end
