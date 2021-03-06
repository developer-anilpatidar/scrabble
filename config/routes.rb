Rails.application.routes.draw do
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'main#index'

  devise_for :users
  resources :clubs
  resources :profile, only: [:edit, :update]
end
