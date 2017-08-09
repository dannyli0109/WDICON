Rails.application.routes.draw do

  resources :users
  resources :session, only:[:create, :destroy]

  get '/login', to: "session#new"

  get 'welcome/index'


  # get '/', to: 'pages#home'

  get '/', to: 'pages#index'

  get '/users/:id/dashboard', to: 'dashboard#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # post '/login', to: 'pages#login'
  #
  # delete '/login', to: 'pages#logout'

  get '/dashboard', to: 'pages#dashboard'

  get '/api/users/current', to: 'api/users#current_user'

  get '/api/users', to: 'api/users#user_by_name'

  # delete '/login', to: 'pages#home' #Clear the session out and go to login

end
