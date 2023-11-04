class RegistrationController < ApplicationController
    def new
        @user = User.new  #Es necesario que sea con el arroba para extender el alcance de la variable, mas alla del metodo "new"
        # @user: variable de instancia
    end; 
end