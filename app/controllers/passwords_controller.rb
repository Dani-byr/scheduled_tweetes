class PasswordsController < ApplicationController
    before_action :require_user_logged_in!
    
    def edit
    end

    def update
        if Current.user.update(password_params)
            redirect_to root_path, notice: "Password updated"
        else
            render :edit #se pone el nombre de la vista, no una ruta
        end
    end

    private
    #Como es solo un metodo de ayuda, lo hacemos privado
    def password_params
        params.require(:user).permit(:password, :password_confirmation)
    end
end