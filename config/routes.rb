Rails.application.routes.draw do

  root 'static#home'
  resources :session, only: [:new, :create, :destroy]
  resources :user, except: [:destroy]
  resources :herbarium 
  resources :bestiary

  get '/bestiary/level/:id', to: 'bestiary#level'
  get '/bestiary/habitat/:id', to: 'bestiary#habitat'
  get '/bestiary/rarity/:id', to: 'bestiary#rarity'

  get 'admin/bestiary', to: 'admin#bestiary'
  get 'admin/user', to: 'admin#user'
  get 'admin/herbarium', to: 'admin#herbarium'
  get 'admin', to: 'admin#index'

  get '/home', to: 'static#home'
  get '/check', to: 'static#check'

end
