Rails.application.routes.draw do
  devise_for :users
  root to: "topics#index"
  resources :users
  resources :themes
  resources :top, only: :index

  resources :list, only:[:new,:create,:edit,:update,:destroy]do
  resources :card, only: [:new,:create]
end

end
