Rails.application.routes.draw do
  resources :prizes
  resources :tickets
  resources :raffles
  resources :kinds
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
