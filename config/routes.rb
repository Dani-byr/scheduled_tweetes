# Hay que definir acciones para todas las rutas, incluso la ruta raiz o root route
# La accion estara dentro del controlador, y ademas hay que definir vistas, que va a ser donde sera
# dirigido el usuario en el production enviroment
Rails.application.routes.draw do
  #GET /about o GET about
  get "about", to: "about#index" #"controller#action"
  #Make sure you have defined your about controller 

  #Accion definida para cuando se pide la ruta root
  root to: "main#index"

  #Acciones definida para cuando se pide la ruta sign_up, dependiendo el request (GET, POST)
  #Tenemos un get para el form, y un post para el form submition
  get "sign_up", to: "registration#new"
  post "sign_up", to: "registration#create"

  delete "logout", to: "sessions#destroy"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "passwords#edit", as: "edit_password"
  patch "password", to: "passwords#update"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

#resources :users, only: [:new, :create] #resources es un helper de rails para generar rutas automaticamente
