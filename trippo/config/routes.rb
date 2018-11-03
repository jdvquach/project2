Rails.application.routes.draw do

  resources :regions 
  resources :attractions
  resources :users
  resources :reviews

end
