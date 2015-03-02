Rails.application.routes.draw do
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :complete
  root to: 'visitors#new'
end
