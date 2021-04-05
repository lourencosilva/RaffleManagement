Rails.application.routes.draw do
  devise_for :users
  resources :prizes
  resources :tickets
  resources :raffles
  resources :kinds
  # resources :users

  root to: "raffles#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
