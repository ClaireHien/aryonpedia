Rails.application.routes.draw do

  get 'search_herbarium/create'
  get 'search_bestiary/create'
  root 'static#home'
  resources :session, only: [:new, :create, :destroy]
  resources :user, except: [:destroy]
  resources :search_bestiary, only: [:create] 
  resources :search_herbarium, only: [:create] 
  resources :herbarium 
  resources :bestiary
  
  resources :search, only: [:show]

  get '/bestiary/level/:id', to: 'bestiary#level'
  get '/bestiary/habitat/:id', to: 'bestiary#habitat'
  get '/bestiary/rarity/:id', to: 'bestiary#rarity'

  get '/herbarium/season/:id', to: 'herbarium#season'
  get '/herbarium/category/:id', to: 'herbarium#category'
  get '/herbarium/habitat/:id', to: 'herbarium#habitat'
  get '/herbarium/rarity/:id', to: 'herbarium#rarity'

  get 'admin/bestiary', to: 'admin#bestiary'
  get 'admin/user', to: 'admin#user'
  get 'admin/herbarium', to: 'admin#herbarium'
  get 'admin', to: 'admin#index'

  get '/home', to: 'static#home'
  get '/check', to: 'static#check'

end
