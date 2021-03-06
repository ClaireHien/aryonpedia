Rails.application.routes.draw do

  root 'static#home'
  resources :session, only: [:new, :create, :destroy]
  resources :user, except: [:destroy]
  resources :herbarium 
  resources :bestiary
  
  resources :search, only: [:show, :index]
  resources :search_h, only: [:show, :index]

  get 'admin/bestiary', to: 'admin#bestiary'
  get 'admin/user', to: 'admin#user'
  get 'admin/herbarium', to: 'admin#herbarium'
  get 'admin', to: 'admin#index'

  get '/home', to: 'static#home'
  get '/event', to: 'static#event'
  get '/check', to: 'static#check'

  get '/moon', to: 'application#moon', as: 'moon'
  get '/sun', to: 'application#sun', as: 'sun'

  put '/validate', to: 'bestiary#validate'
  put '/validate_herbarium', to: 'herbarium#validate'

  put '/check_event', to: 'bestiary#check_event'
  put '/check_event_herbarium', to: 'herbarium#check_event'

end
