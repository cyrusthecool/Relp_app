Rails.application.routes.draw do


  root :to => 'restaurants#index'
  get "/login" => "session#new"
  post "/login" => "session#create"
  delete "/login" => 'session#destroy'

  resources :users
  resources :restaurants
  resources :nationalities
  resources :categories
  resources :dishes
  resources :layout
  resources :session


end
