Rails.application.routes.draw do
  get 'rooms/index'
  get 'ivents/index'
  get 'familys/index'
  get 'ofices/index'
  devise_for :users
  root to: "topics#index"
  resources :users
  resources :themes
  resources :top, only: :index

  resources :list, only:[:new,:create,:edit,:update,:destroy]do
  resources :card, except:[:index]
  end

  resources :familys, only: :index
  resources :ofices, only: :index
  resources :ivents, only: :index
  resources :records do
    collection do
      get 'search'
    end
  end

  resources :pics do
    collection do
      get 'search'
    end
  end
 
end
