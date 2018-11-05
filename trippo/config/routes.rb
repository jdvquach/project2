Rails.application.routes.draw do
  root "regions#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :regions , only: [ :index, :show ]
  resources :attractions
  resources :users
  resources :reviews

  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => "session#destroy"

  post "attractions/search" => "attractions#search", as: 'search_attractions'
end
