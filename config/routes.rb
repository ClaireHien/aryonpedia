Rails.application.routes.draw do

  get 'search_h/show'
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
  resources :search_h, only: [:show]

  get 'admin/bestiary', to: 'admin#bestiary'
  get 'admin/user', to: 'admin#user'
  get 'admin/herbarium', to: 'admin#herbarium'
  get 'admin', to: 'admin#index'

  get '/home', to: 'static#home'
  get '/check', to: 'static#check'

end
