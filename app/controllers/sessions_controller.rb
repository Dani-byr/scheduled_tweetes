class SessionsController < ApplicationController
    def destroy
        session[:user_id] = nil
        redirect_to root_path, notice: "Logged out"
        #A esto ultimo hay que agregarlo a algun lugar en nuestra aplicacion
    end
end