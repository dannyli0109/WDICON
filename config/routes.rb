Rails.application.routes.draw do
  get 'welcome/index'


   get '/', to: 'pages#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login', to: 'pages#login' 
  delete '/login', to: 'pages#logout' 

  get '/api/users/current', to: 'api/users#current_user'
  
end
