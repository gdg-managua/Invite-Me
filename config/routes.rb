Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :contacts, only: [:new, :create]
  resources :visitors, only: [:new, :create]
  resources :complete
  root to: 'visitors#new'
end
