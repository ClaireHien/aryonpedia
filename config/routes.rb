Rails.application.routes.draw do

  root 'static#home'
  resources :session, only: [:new, :create, :destroy]
  resources :user, except: [:destroy]
  resources :herbarium
  resources :bestiary

  get '/home', to: 'static#home'

end
