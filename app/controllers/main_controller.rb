class MainController < ApplicationController
    def index
        flash[:notice] = "Logged in successfully"
        flash[:alert] = "Invalid email or password"
        # Se pueden declarar los mensajes flash aca, pero hay que printearlos en algun lugar del html
    end;    
end    