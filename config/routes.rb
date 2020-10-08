Rails.application.routes.draw do
  root to: "topics#index"
  resources :users
  
end
