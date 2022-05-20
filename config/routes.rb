# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'users#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :users do
    resources :attendances
  end

  resources :roles
  resources :daily_statuses
  resources :leaves
end
