class AboutController < ApplicationController
    def index    #Action defined. Se ejecuta cuando queremos acceder a "/about"
    end;
    #Puede estar vacio, porque hereda de ApplicationController y se hace una accion por default
    #Rails va a buscar el archivo "index.html.erb", porque busca por un formato html
end      