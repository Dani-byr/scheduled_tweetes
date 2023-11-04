class MainController < ApplicationController
    def index   
        if session[:user_id]
            #Con "find_by" evitamos que se rompa la aplicacion en caso de no encontrar el user
            @user = User.find_by(id: session[:user_id])
        end
       
        # Se pueden declarar los mensajes flash aca, pero hay que printearlos en algun lugar del html
    end;    
end    