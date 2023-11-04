class RegistrationController < ApplicationController
    def new
        @user = User.new  #Es necesario que sea con el arroba para extender el alcance de la variable, mas alla del metodo "new"
        # @user: variable de instancia
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to root_path, notice: "Successfully created account"
        else
            flash[:alert]
            render :new
        end
    end

    private
    def user_params
        #Es como params[:user], pero tira error si no encuentra el usuario
        params.require(:user).permit(:email, :password, :password_confirmation)  #Define cuales son los unicos parametros que permite
    end
    
end