Rails.application.routes.draw do
  devise_for :users
  root to: "topics#index"
  resources :users
  resources :themes
  resources :list
  
end
