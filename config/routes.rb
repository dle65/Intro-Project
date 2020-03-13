# frozen_string_literal: true

Rails.application.routes.draw do
  get 'welcome/index'
  # get 'search', to: 'library#search'
  get 'library/:id', to: 'library#show', id: /\d+/, as: 'library'

  resources :comments
  resources :author
  resources :book
  resources :welcome
  resources :library
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
