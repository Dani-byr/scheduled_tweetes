class MainController < ApplicationController
    def index   
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
       
        # Se pueden declarar los mensajes flash aca, pero hay que printearlos en algun lugar del html
    end;    
end    