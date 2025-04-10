Rails.application.routes.draw do
  root "users#feed"

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes 
  resources :photos

  get ":username" => "users#show", as: :user
  get ":username/liked" => "users#liked", as: :liked
  get "/" => "users#feed", as: :feed
  
end
