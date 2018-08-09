Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  get 'welcome/index'
  get '/index', to: 'home#index'
  resources :articles do
  resources :comments
end

  root 'home#index'
end
