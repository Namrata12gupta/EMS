# frozen_string_literal: true

Rails.application.routes.draw do
  get 'home/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users # , controllers: { registrations: 'users/registrations' }
  root to: 'homes#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :attendances
  end

  resources :roles
  resources :daily_statuses
  resources :leafs

  namespace :hr do
    resources :leaves
  end
end
