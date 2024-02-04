Rails.application.routes.draw do
  resource :search, only: :create
  resources :searchables, only: :index
  resources :states, only: :index
  resources :users, only: :update

  root "comboboxes#index"
end
