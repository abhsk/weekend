Rails.application.routes.draw do
  root 'home#index'

  resources :users, only: [:index, :new, :create, :show, :edit, :update]
end
