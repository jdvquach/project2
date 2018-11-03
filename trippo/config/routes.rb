Rails.application.routes.draw do
  root "regions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :attractions
  resources :users
  resources :regions
  resources :reviews

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"
end
